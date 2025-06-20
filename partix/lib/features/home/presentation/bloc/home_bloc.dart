import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/features/home/presentation/bloc/home_event.dart';
import 'package:partix/features/home/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TextEditingController searchController = TextEditingController();
  HomeBloc() : super(const HomeState()) {
    on<CategorySelected>((event, emit) {
      emit(state.copyWith(selectedLabel: event.selectedLabel));
    });

    on<TabChanged>((event, emit) {
      emit(state.copyWith(currentIndex: event.selectedIndex));
    });
  }
}
