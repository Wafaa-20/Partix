import 'package:equatable/equatable.dart';

class Splash extends Equatable {
  final String id;
  final String name;

  const Splash({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
