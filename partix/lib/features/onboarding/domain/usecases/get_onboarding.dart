import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/onboarding/domain/entities/onboarding.dart';
import 'package:partix/features/onboarding/domain/repositories/onboarding_repository.dart';

class GetOnboarding {
  final OnboardingRepository repository;

  GetOnboarding(this.repository);

  Future<Either<Failure, Onboarding>> call() async {
    return await repository.getOnboarding();
  }
}
