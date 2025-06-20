import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/features/onboarding/presentation/bloc/onboarding_event.dart';
import 'package:partix/features/onboarding/presentation/bloc/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
