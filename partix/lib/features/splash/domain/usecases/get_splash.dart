import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/splash/domain/entities/splash.dart';
import 'package:partix/features/splash/domain/repositories/splash_repository.dart';

class GetSplash {
  final SplashRepository repository;

  GetSplash(this.repository);

  Future<Either<Failure, Splash>> call() async {
    return await repository.getSplash();
  }
}
