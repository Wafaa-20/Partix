import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/custom_card.dart';
import 'package:partix/features/card/presentation/bloc/card_bloc.dart';
import 'package:partix/features/card/presentation/widgets/counter_widget.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return BlocProvider(
          create: (_) => CardBloc(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.0),
            child: Row(
              children: [
                SizedBox(
                  child: CustomCard(
                    color: AppPalette.whiteColor.withValues(alpha: 0.3),
                    leftRadius: Radius.circular(15),
                    child: Image.asset(
                      "asset/image/monter.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                CustomCard(
                  // width: 213,
                  rightRadius: Radius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "32\" Odyssey G5",
                              style: TextStyles.sepro40015,
                            ),
                            Icon(Icons.delete_outline),
                          ],
                        ),
                        Text(
                          "Monitor",
                          style: TextStyles.sepro40015.copyWith(
                            color: AppPalette.grayColor,
                          ),
                        ),
                        Text("6,999.00 SR", style: TextStyles.sepro40015),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CounterWidget(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
