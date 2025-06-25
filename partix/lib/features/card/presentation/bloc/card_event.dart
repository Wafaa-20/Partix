import 'package:equatable/equatable.dart';

sealed class CardEvent extends Equatable {
  const CardEvent();

  @override
  List<Object> get props => [];
}

final class IncreaseItem extends CardEvent {}

final class DecreaseItem extends CardEvent {}

final class LoadCartItems extends CardEvent {}
