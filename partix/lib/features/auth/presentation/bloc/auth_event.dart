import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class ValidateFormEvent extends AuthEvent {
  final GlobalKey<FormState> formKey;

  const ValidateFormEvent({required this.formKey});
}

class SignUpEvent extends AuthEvent {}

class LogInEvent extends AuthEvent {}
