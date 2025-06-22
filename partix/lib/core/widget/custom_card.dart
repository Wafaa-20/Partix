import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_palette.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.color,
    required this.child,
    this.leftRadius,
    this.rightRadius,
  });

  final Color? color;
  final Widget child;
  final Radius? leftRadius;
  final Radius? rightRadius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
