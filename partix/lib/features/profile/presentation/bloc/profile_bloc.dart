// lib/blocs/profile/profile_bloc.dart
import 'package:bloc/bloc.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileItemClicked>(_onProfileItemClicked);
    on<ConfirmLogout>(_onConfirmLogout);
  }

  void _onProfileItemClicked(
    ProfileItemClicked event,
    Emitter<ProfileState> emit,
  ) async {
    switch (event.itemType) {
      case "orders":
        emit(ProfileShowDialog('noOrdersFound'));
        break;
      case "preferences":
        emit(ProfileShowDialog('showPreferencesDialog'));
        break;
      case "support":
        emit(ProfileShowDialog('showSupportDialog'));
        break;
      case "logout":
        emit(ProfileShowDialog('logoutConfirmation'));
        break;
      default:
        break;
    }
  }

  void _onConfirmLogout(ConfirmLogout event, Emitter<ProfileState> emit) async {
    try {
      emit(ProfileLogoutSuccess());
      emit(ProfileNavigateTo('/login'));
    } catch (e) {
      // emit(ProfileError('Failed to logout: ${e.toString()}'));
    }
  }
}
