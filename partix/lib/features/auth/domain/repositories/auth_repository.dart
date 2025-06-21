import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/auth/domain/entities/auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, Auth>> getAuth();
}
