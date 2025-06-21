import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/google_map/data/datasources/google_map_datasource.dart';
import 'package:partix/features/google_map/domain/entities/google_map.dart';
import 'package:partix/features/google_map/domain/repositories/google_map_repository.dart';

class Google_mapRepositoryImpl implements Google_mapRepository {
  final Google_mapDatasource datasource;

  Google_mapRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Google_map>> getGoogle_map() async {
    try {
      final result = await datasource.getGoogle_map();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
