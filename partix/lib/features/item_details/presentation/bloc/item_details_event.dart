import 'package:equatable/equatable.dart';


abstract class ItemDetailsEvent extends Equatable {
  const ItemDetailsEvent();

  @override
  List<Object?> get props => [];
}

class LoadItemDetails extends ItemDetailsEvent {
  final int itemId;

  const LoadItemDetails(this.itemId);

  @override
  List<Object?> get props => [itemId];
}