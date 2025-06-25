import 'package:equatable/equatable.dart';

class Auth extends Equatable {
  final String id;
  final String email;
  final String password;
  final String mobile;

  const Auth({
    required this.id,
    required this.email,
    required this.password,
    required this.mobile,
  });

  @override
  List<Object> get props => [id, email, password, mobile];
}
