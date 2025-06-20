import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/features/auth/presentation/bloc/auth_event.dart';
import 'package:partix/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobController = TextEditingController();

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
    on<SignUpEvent>(signUpEvent);
    on<LogInEvent>(logInEvent);
  }

  FutureOr<void> signUpEvent(SignUpEvent event, Emitter<AuthState> emit) {}

  FutureOr<void> logInEvent(LogInEvent event, Emitter<AuthState> emit) {}
}
