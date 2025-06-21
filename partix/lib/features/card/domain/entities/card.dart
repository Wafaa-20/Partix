import 'package:equatable/equatable.dart';

class Card extends Equatable {
  final String id;
  final String name;

  const Card({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
