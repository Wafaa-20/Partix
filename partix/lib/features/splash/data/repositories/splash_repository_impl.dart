import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/splash/data/datasources/splash_datasource.dart';
import 'package:partix/features/splash/domain/entities/splash.dart';
import 'package:partix/features/splash/domain/repositories/splash_repository.dart';

class SplashRepositoryImpl implements SplashRepository {
  final SplashDatasource datasource;

  SplashRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Splash>> getSplash() async {
    try {
      final result = await datasource.getSplash();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
