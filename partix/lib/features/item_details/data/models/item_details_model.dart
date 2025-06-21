import 'package:partix/features/item_details/domain/entities/item_details.dart';

class Item_detailsModel {
  final String id;
  final String name;

  Item_detailsModel({
    required this.id,
    required this.name,
  });

  factory Item_detailsModel.fromJson(Map<String, dynamic> json) {
    return Item_detailsModel(
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

  Item_details toEntity() {
    return Item_details(
      id: id,
      name: name,
    );
  }
}
