import 'package:partix/features/auth/domain/entities/auth.dart';

class AuthModel {
  final String id;
  final String name;
  final String email;
  final String password;
  final String mobile;

  AuthModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.mobile,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      mobile: json['mobile'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'mobile': mobile,
    };
  }

  Auth toEntity() {
    return Auth(
      id: id,
      name: name,
      email: email,
      password: password,
      mobile: mobile,
    );
  }
}
