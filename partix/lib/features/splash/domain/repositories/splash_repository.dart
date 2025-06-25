import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/splash/domain/entities/splash.dart';

abstract class SplashRepository {
  Future<Either<Failure, Splash>> getSplash();
}
