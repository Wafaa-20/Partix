import 'package:dartz/dartz.dart';
import 'package:partix/core/error/failures.dart';
import 'package:partix/features/favorites/domain/entities/favorites.dart';

abstract class FavoritesRepository {
  Future<Either<Failure, Favorites>> getFavorites();
}
