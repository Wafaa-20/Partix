import 'package:equatable/equatable.dart';

class Auth extends Equatable {
  final String id;
  final String name;
  final String email;
  final String password;
  final String mobile;

  const Auth({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.mobile,
  });

  @override
  List<Object> get props => [id, name, email, password, mobile];
}
