import 'package:flutter/material.dart';
import 'package:partix/core/text/text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.styles,
  });
  final void Function() onPressed;
  final String text;
  final TextStyle? styles;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text, style: styles ?? TextStyles.sepro50017),
    );
  }
}
