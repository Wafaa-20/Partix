import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_palette.dart';

class CustomPhotoCard extends StatelessWidget {
  const CustomPhotoCard({
    super.key,
    this.color,
    required this.child,
    this.leftRadius,
    this.rightRadius, this.height, this.width,
  });

  final Color? color;
  final Widget child;
  final Radius? leftRadius;
  final Radius? rightRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 100,
      width: width ?? 100,
      child: Card(
        margin: EdgeInsets.zero,
        color: color ?? AppPalette.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: leftRadius ?? Radius.zero,
            right: rightRadius ?? Radius.zero,
          ),
        ),
        child: child,
      ),
    );
  }
}
