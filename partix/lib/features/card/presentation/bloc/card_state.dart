import 'package:equatable/equatable.dart';

sealed class CardState extends Equatable {
  const CardState();

  @override
  List<Object> get props => [];
}

final class CardInitial extends CardState {}
