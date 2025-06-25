import 'package:flutter/material.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/button/custom_button.dart';

class EmptyFavoritesWidget extends StatelessWidget {
  const EmptyFavoritesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("asset/image/Empty_favorites.png"),
          SizedBox(height: 28),
          Text(AppText.empty2, style: TextStyles.sepro40028),
          SizedBox(height: 10),
          CustomButton(
            color: AppPalette.orangeColor,
            height: 39,
            width: 149,
            onPressed: () {},
            child: Text(AppText.item, style: TextStyles.sepro50020),
          ),
        ],
      ),
    );
  }
}
