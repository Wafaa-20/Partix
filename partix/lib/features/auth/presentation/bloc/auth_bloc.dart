import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/features/auth/presentation/bloc/auth_event.dart';
import 'package:partix/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobController = TextEditingController();
  
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
    
    });
  }
}
