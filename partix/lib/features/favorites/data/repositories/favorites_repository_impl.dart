import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/favorites/data/datasources/favorites_datasource.dart';
import 'package:partix/features/favorites/domain/entities/favorites.dart';
import 'package:partix/features/favorites/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesDatasource datasource;

  FavoritesRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Favorites>> getFavorites() async {
    try {
      final result = await datasource.getFavorites();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
