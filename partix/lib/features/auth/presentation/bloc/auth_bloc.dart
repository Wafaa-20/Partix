import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:partix/features/auth/data/datasources/auth_layer.dart';
import 'package:partix/features/auth/presentation/bloc/auth_event.dart';
import 'package:partix/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobController = TextEditingController();
  final authGetit = GetIt.I.get<AuthLayer>();
  final RegExp passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~%^])[A-Za-z\d!@#\$&*~%^]{8,}$',
  );
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
    on<ValidateFormEvent>(buttonValidate);
    on<SignUpEvent>(signUpEvent);
    on<LogInEvent>(logInEvent);
  }
  FutureOr<void> buttonValidate(
    ValidateFormEvent event,
    Emitter<AuthState> emit,
  ) {
    final isValid = event.formKey.currentState?.validate() ?? false;

    emit(AuthFormValidation(isValid: isValid));
  }

  FutureOr<void> signUpEvent(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await authGetit.signUpMethod(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        mobile: mobController.text,
      );
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  FutureOr<void> logInEvent(LogInEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await authGetit.logInMethod(
        email: emailController.text,
        password: passwordController.text,
      );
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }
}
