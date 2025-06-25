import 'package:equatable/equatable.dart';

class Item_details extends Equatable {
  final String id;
  final String name;

  const Item_details({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
