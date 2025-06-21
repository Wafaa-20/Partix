import 'package:equatable/equatable.dart';

class ItemDetailsState extends Equatable {
  final Map<String, dynamic>? item;

  const ItemDetailsState({this.item});

  @override
  List<Object?> get props => [item ?? {}];
}
