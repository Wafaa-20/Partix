part of 'profile_bloc.dart';

abstract class ProfileEvent {}

class ProfileItemClicked extends ProfileEvent {
  //what he taped
  final String itemType;
  final String? currentValue;
  ProfileItemClicked(this.itemType, this.currentValue);
}

class ConfirmLogout extends ProfileEvent {}
