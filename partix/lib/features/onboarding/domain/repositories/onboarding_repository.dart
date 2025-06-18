import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/onboarding/domain/entities/onboarding.dart';

abstract class OnboardingRepository {
  Future<Either<Failure, Onboarding>> getOnboarding();
}
