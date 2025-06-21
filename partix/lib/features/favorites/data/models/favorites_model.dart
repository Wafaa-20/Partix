import 'package:partix/features/favorites/domain/entities/favorites.dart';

class FavoritesModel {
  final String id;
  final String name;

  FavoritesModel({
    required this.id,
    required this.name,
  });

  factory FavoritesModel.fromJson(Map<String, dynamic> json) {
    return FavoritesModel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  Favorites toEntity() {
    return Favorites(
      id: id,
      name: name,
    );
  }
}
