import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/extension/navigation.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/button/custom_button.dart';
import 'package:partix/features/card/presentation/bloc/card_bloc.dart';
import 'package:partix/features/card/presentation/pages/payment_page.dart';
import 'package:partix/features/card/presentation/widgets/cart_list_view.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardBloc(),
      child: Builder(
        builder: (context) {
          final bloc = context.read<CardBloc>();
          return Scaffold(
            appBar: AppBar(
              title: const Text(AppText.cart),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(8),
                child: Container(
                  height: 1,
                  width: context.getWidth() * 0.95,
                  color: AppPalette.whiteLight3,
                ),
              ),
            ),
            // EmptyCartWidget(),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Flexible(child: CartListView()),
                  SizedBox(height: 20),
                  SizedBox(
                    width: context.getWidth() * 0.95,

                    child: Divider(color: AppPalette.whiteColor),
                  ),
                  SizedBox(height: 20),
                  Text("${AppText.subtotal}64", style: TextStyles.sepro60017),
                  SizedBox(height: 20),
                  CustomButton(
                    color: AppPalette.orangeColor,
                    height: 54,
                    width: context.getWidth() * 0.95,
                    onPressed: () {
                      context.customPush(PaymentPage());
                    },
                    child: Text(AppText.checkout, style: TextStyles.sepro50020),
                  ),
                  SizedBox(height: 21),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
