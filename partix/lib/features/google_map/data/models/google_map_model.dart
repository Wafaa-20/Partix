import 'package:partix/features/google_map/domain/entities/google_map.dart';

class Google_mapModel {
  final String id;
  final String name;

  Google_mapModel({
    required this.id,
    required this.name,
  });

  factory Google_mapModel.fromJson(Map<String, dynamic> json) {
    return Google_mapModel(
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

  Google_map toEntity() {
    return Google_map(
      id: id,
      name: name,
    );
  }
}
