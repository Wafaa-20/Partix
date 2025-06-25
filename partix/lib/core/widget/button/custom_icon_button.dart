import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_palette.dart';

<<<<<<< HEAD

=======
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.color,
    this.size,
  });
  final void Function()? onPressed;
  final IconData icon;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
<<<<<<< HEAD
=======
      padding: EdgeInsets.zero,
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
      onPressed: onPressed,
      icon: Icon(icon, color: color ?? AppPalette.whiteColor, size: size ?? 24),
    );
  }
}
