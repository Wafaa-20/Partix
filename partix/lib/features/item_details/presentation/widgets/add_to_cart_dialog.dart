import 'package:flutter/material.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';

void showAddToCartDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.transparent,
    builder: (context) {
      Future.delayed(const Duration(seconds: 2), () {
        if (context.mounted) {
          Navigator.of(context).pop();
        }
      });
      return Center(
        child: Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(193, 158, 158, 158),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppPalette.orangeColor,
                ),
                padding: EdgeInsets.all(20),
                child: const Icon(
                  Icons.check,
                  size: 40,
                  color: AppPalette.whiteColor,
                ),
              ),
              Text(AppText.addedToCart, style: TextStyles.sepro50017),
              SizedBox(),
            ],
          ),
        ),
      );
    },
  );
}
