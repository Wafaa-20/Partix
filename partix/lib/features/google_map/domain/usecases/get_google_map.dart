import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/google_map/domain/entities/google_map.dart';
import 'package:partix/features/google_map/domain/repositories/google_map_repository.dart';

class GetGoogle_map {
  final Google_mapRepository repository;

  GetGoogle_map(this.repository);

  Future<Either<Failure, Google_map>> call() async {
    return await repository.getGoogle_map();
  }
}
