import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_palette.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 58,
        width: 79,
        decoration: BoxDecoration(
          color: AppPalette.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
