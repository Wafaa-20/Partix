import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/home/domain/entities/home.dart';

abstract class HomeRepository {
  Future<Either<Failure, Home>> getHome();
}
