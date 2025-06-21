import 'package:flutter/material.dart';
import 'package:partix/core/text/text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
<<<<<<< HEAD
    required this.text,
    required this.labelText,
    this.obscureText = false,
    this.validator,
  });
  final TextEditingController controller;
  final String text;
  final String labelText;
  final bool? obscureText;
=======
    required this.hintText,
    required this.labelText,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
  });
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
>>>>>>> origin/new-branch
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
<<<<<<< HEAD
        Text(labelText, style: TextStyles.sepro40015),
        SizedBox(height: 8),
        TextFormField(
          style: TextStyles.sepro40015,
          controller: controller,
          obscureText: obscureText!,
          decoration: InputDecoration(hintText: text),
=======
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(labelText, style: TextStyles.sepro40015),
        ),
        SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscureText!,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon ,
            suffixIcon: suffixIcon,
          ),
>>>>>>> origin/new-branch
          validator: validator,
        ),
      ],
    );
  }
}
