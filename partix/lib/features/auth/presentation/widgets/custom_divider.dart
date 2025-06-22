import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_palette.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126,
      child: Divider(thickness: 1.5, color: AppPalette.blueColor2),
    );
  }
}
