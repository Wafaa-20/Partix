import 'package:partix/features/onboarding/data/models/onboarding_model.dart';

abstract class OnboardingDatasource {
  Future<OnboardingModel> getOnboarding();
}

class OnboardingDatasourceImpl implements OnboardingDatasource {
  @override
  Future<OnboardingModel> getOnboarding() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return OnboardingModel(
      id: '1',
      name: 'Onboarding Name',
    );
  }
}
