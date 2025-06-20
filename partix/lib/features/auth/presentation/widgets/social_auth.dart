import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_palette.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 79,
      decoration: BoxDecoration(color: AppPalette.whiteColor),
      child: Image.asset(image),
    );
  }
}
