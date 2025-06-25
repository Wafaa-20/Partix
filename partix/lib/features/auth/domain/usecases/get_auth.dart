import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/auth/domain/entities/auth.dart';
import 'package:partix/features/auth/domain/repositories/auth_repository.dart';

class GetAuth {
  final AuthRepository repository;

  GetAuth(this.repository);

  Future<Either<Failure, Auth>> call() async {
    return await repository.getAuth();
  }
}
