<<<<<<< HEAD
import 'package:equatable/equatable.dart';

sealed class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

final class OnboardingInitial extends OnboardingState {}
=======
part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingState {}

final class OnboardingInitial extends OnboardingState {}

final class OnboardingPageState extends OnboardingState {
  final int currentPage;
  OnboardingPageState({required this.currentPage});
}

final class OnboardingCompleted extends OnboardingState {}
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
