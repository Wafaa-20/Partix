import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/service/supabase_connect.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/custom_card.dart';
import 'package:partix/features/card/presentation/bloc/card_bloc.dart';
import 'package:partix/features/card/presentation/widgets/counter_widget.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.cartId, required this.alldetails, this.deleteFunction});
  final cartId;
  final alldetails;
  final deleteFunction;

  @override
  Widget build(BuildContext context) {
    final imagepath = alldetails['image'];
    final title = alldetails['title'];
    final category = alldetails['category'];
    final price = alldetails['price'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        children: [
          CustomPhotoCard(
            height: context.getHeight() * 0.15,
            width: context.getWidth() * 0.35,
            color: AppPalette.whiteColor.withValues(alpha: 0.3),
            leftRadius: Radius.circular(15),
            child: Image.asset(
              imagepath,
              width: 60,
              height: 130,
              fit: BoxFit.contain,
            ),
          ),
          CustomPhotoCard(
            height: context.getHeight() * 0.15,
            width: context.getWidth() * 0.56,
            rightRadius: Radius.circular(15),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title, softWrap: true, style: TextStyles.sepro40015),
                      IconButton(
                        onPressed: deleteFunction ??(){}
                        ,
                        icon: Icon(Icons.delete_outline),
                      ),
                    ],
                  ),
                  Text(
                    category,
                    style: TextStyles.sepro40015.copyWith(
                      color: AppPalette.grayColor,
                    ),
                  ),
                  Text('$price SR', style: TextStyles.sepro40015),
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
    );
  }
}
