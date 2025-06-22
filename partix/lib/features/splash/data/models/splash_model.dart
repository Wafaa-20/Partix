import 'package:partix/features/splash/domain/entities/splash.dart';

class SplashModel {
  final String id;
  final String name;

  SplashModel({
    required this.id,
    required this.name,
  });

  factory SplashModel.fromJson(Map<String, dynamic> json) {
    return SplashModel(
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

  Splash toEntity() {
    return Splash(
      id: id,
      name: name,
    );
  }
}
