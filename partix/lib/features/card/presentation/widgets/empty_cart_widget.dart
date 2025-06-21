import 'package:flutter/material.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/button/custom_button.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("asset/image/Empty_Cart.png"),
          SizedBox(height: 28),
          Text(AppText.empty, style: TextStyles.sepro40028),
          SizedBox(height: 10),
          CustomButton(
            color: AppPalette.orangeColor,
            height: 39,
            width: 149,
            onPressed: () {},
            child: Text(AppText.shop, style: TextStyles.sepro50020),
          ),
        ],
      ),
    );
  }
}
