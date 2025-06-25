<<<<<<< HEAD
import 'package:equatable/equatable.dart';

sealed class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}
=======
part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

class NextPageEvent extends OnboardingEvent {}

class PreviousPageEvent extends OnboardingEvent {}

class UpdateCurrentPageEvent extends OnboardingEvent {
  final int pageIndex;

  UpdateCurrentPageEvent({required this.pageIndex});
}

class CompleteOnboardingEvent extends OnboardingEvent {}
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
