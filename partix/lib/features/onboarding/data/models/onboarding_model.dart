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
