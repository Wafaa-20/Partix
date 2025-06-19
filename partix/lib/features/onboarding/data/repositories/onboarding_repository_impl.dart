import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:partix/features/onboarding/domain/entities/onboarding.dart';
import 'package:partix/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingDatasource datasource;

  OnboardingRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Onboarding>> getOnboarding() async {
    try {
      final result = await datasource.getOnboarding();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
