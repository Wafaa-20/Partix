import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_palette.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.width,
    this.height,
  });
  final void Function()? onPressed;
  final Widget child;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: color ?? AppPalette.blueColor3,
        foregroundColor: AppPalette.whiteColor,
        fixedSize: Size(width ?? 300, height ?? 50),
      ),
      child: child,
    );
  }
}
