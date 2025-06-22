import 'package:partix/features/favorites/data/models/favorites_model.dart';

abstract class FavoritesDatasource {
  Future<FavoritesModel> getFavorites();
}

class FavoritesDatasourceImpl implements FavoritesDatasource {
  @override
  Future<FavoritesModel> getFavorites() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return FavoritesModel(
      id: '1',
      name: 'Favorites Name',
    );
  }
}
