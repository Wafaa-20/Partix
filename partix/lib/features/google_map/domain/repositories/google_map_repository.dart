import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/google_map/domain/entities/google_map.dart';

abstract class Google_mapRepository {
  Future<Either<Failure, Google_map>> getGoogle_map();
}
