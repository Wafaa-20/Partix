import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/features/auth/presentation/bloc/auth_event.dart';
import 'package:partix/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
