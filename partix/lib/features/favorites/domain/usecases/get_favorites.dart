import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/favorites/domain/entities/favorites.dart';
import 'package:partix/features/favorites/domain/repositories/favorites_repository.dart';

class GetFavorites {
  final FavoritesRepository repository;

  GetFavorites(this.repository);

  Future<Either<Failure, Favorites>> call() async {
    return await repository.getFavorites();
  }
}
