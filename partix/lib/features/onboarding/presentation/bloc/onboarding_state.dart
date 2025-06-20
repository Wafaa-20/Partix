part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingState {}

final class OnboardingInitial extends OnboardingState {}

final class OnboardingPageState extends OnboardingState {
  final int currentPage;
  OnboardingPageState({required this.currentPage});
}

final class OnboardingCompleted extends OnboardingState {}
