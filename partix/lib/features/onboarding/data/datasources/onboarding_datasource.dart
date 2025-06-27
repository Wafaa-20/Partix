import 'package:partix/core/text/app_text.dart';
import 'package:partix/features/onboarding/data/models/onboarding_model.dart';
import 'package:partix/core/text/app_text.dart';

abstract class OnboardingDatasource {
  Future<OnboardingModel> getOnboarding();
}

class OnboardingDatasourceImpl implements OnboardingDatasource {
  @override
  Future<OnboardingModel> getOnboarding() async {
    return OnboardingModel(
      image: 'assets/images/onboarding1.png',
      title: AppText.title1,
      subTitle: AppText.subTitle1,
    );
  }
}
