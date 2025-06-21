import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/features/onboarding/data/models/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller, // PageController
      count: onboardingData.length,
      effect: ExpandingDotsEffect(
        dotColor: AppPalette.whiteColor,
        activeDotColor: AppPalette.grayColor,
        dotHeight: 10,
        dotWidth: 10,
      ),
      onDotClicked: (index) {},
    );
  }
}
