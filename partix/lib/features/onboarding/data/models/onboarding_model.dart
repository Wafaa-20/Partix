<<<<<<< HEAD
import 'package:partix/features/onboarding/domain/entities/onboarding.dart';

class OnboardingModel {
  final String id;
  final String name;

  OnboardingModel({
    required this.id,
    required this.name,
  });

  factory OnboardingModel.fromJson(Map<String, dynamic> json) {
    return OnboardingModel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  Onboarding toEntity() {
    return Onboarding(
      id: id,
      name: name,
    );
  }
}
=======
import 'package:partix/core/text/app_text.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
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
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
