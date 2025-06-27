import 'package:partix/core/text/app_text.dart';
import 'package:partix/features/onboarding/domain/entities/onboarding.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  Onboarding toEntity() {
    return Onboarding(image: image, title: title, subTitle: subTitle);
  }
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: "asset/image/onbording1.png",
    title: AppText.title1,
    subTitle: AppText.subTitle1,
  ),
  OnboardingModel(
    image: "asset/image/onbordin2.png",
    title: AppText.title2,
    subTitle: AppText.subTitle2,
  ),
  OnboardingModel(
    image: "asset/image/onbording3.png",
    title: AppText.title3,
    subTitle: AppText.subTitle3,
  ),
];
