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
<<<<<<< HEAD
        backgroundColor: color ?? AppPalette.blueColor2,
        foregroundColor: AppPalette.whiteColor,
        fixedSize: Size(width ?? 90, height ?? 48),
=======
        backgroundColor: color ?? AppPalette.blueColor3,
        foregroundColor: AppPalette.whiteColor,
        fixedSize: Size(width ?? 300, height ?? 50),
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
      ),
      child: child,
    );
  }
}
