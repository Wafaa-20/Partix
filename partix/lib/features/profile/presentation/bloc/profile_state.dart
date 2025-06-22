part of 'profile_bloc.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {
  final bool receiveNotifications;
  final bool isDarkModeEnabled;
  ProfileInitial({
    this.receiveNotifications = true,
    this.isDarkModeEnabled = false,
  });
}

class ProfileNavigateTo extends ProfileState {
  final String routeName;

  ProfileNavigateTo(this.routeName);
}

class ProfileShowDialog extends ProfileState {
  final String dialogType;
  ProfileShowDialog(this.dialogType);
}

class ProfileLogoutSuccess extends ProfileState {}
