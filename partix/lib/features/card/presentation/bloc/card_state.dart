import 'package:equatable/equatable.dart';

sealed class CardState extends Equatable {
  const CardState();

  @override
  List<Object> get props => [];
}

final class CardInitial extends CardState {}

final class ItemState extends CardState {
  final int count;
  final double? total;

  const ItemState({required this.count, this.total});

  @override
  List<Object> get props => [count, total ?? 0.0];
}

final class CartItemsState extends CardState {
  final List<Map<String, dynamic>> items;

  const CartItemsState({required this.items});

  @override
  List<Object> get props => [items];
}
