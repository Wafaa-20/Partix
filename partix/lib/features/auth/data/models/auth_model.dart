import 'package:partix/features/auth/domain/entities/auth.dart';

class AuthModel {
  final String id;
  final String name;

  AuthModel({
    required this.id,
    required this.name,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
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

  Auth toEntity() {
    return Auth(
      id: id,
      name: name,
    );
  }
}
