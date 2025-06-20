import 'package:equatable/equatable.dart';

class Favorites extends Equatable {
  final String id;
  final String name;

  const Favorites({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
