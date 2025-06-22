import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:partix/core/text/text_styles.dart';

class CountryCode extends StatelessWidget {
  const CountryCode({super.key});

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      onChanged: print,
      // Initial selection for phone number country
      initialSelection: 'SA',
      favorite: ['+966', 'SA'],
      showCountryOnly: false,
      showFlag: false,
      showFlagDialog: true,
      textStyle: TextStyles.sepro70015,
    );
  }
}
