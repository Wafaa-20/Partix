// import 'package:dartz/dartz.dart';
// import 'package:partix/core/error/failures.dart';
// import 'package:partix/features/profile/data/datasources/profile_datasource.dart';
// import 'package:partix/features/profile/domain/entities/profile.dart';
// import 'package:partix/features/profile/domain/repositories/profile_repository.dart';

// class ProfileRepositoryImpl implements ProfileRepository {
//   final ProfileDatasource datasource;

//   ProfileRepositoryImpl(this.datasource);

//   @override
//   Future<Either<Failure, Profile>> getProfile() async {
//     try {
//       final result = await datasource.getProfile();
//  //     return Right(result.toEntity());
//     } on Exception {
//       return Left(ServerFailure(message: "Something went wrong!"));
//     }
//   }
// }
