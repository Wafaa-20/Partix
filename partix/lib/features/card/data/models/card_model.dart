import 'package:partix/features/card/domain/entities/card.dart';

class CardModel {
  final String id;
  final String name;

  CardModel({
    required this.id,
    required this.name,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
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

  Card toEntity() {
    return Card(
      id: id,
      name: name,
    );
  }
}
