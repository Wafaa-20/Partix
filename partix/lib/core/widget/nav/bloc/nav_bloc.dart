import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:partix/features/home/presentation/pages/home_page.dart';
=======
>>>>>>> origin/new-branch

part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
<<<<<<< HEAD
  final List<Widget> pages = [
    HomePage(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  NavBloc() : super(NavSelectedState(0)) {
    on<ChangeNavSelectedEvent>(_onPageChanged);
  }

  void _onPageChanged(ChangeNavSelectedEvent event, Emitter<NavState> emit) {
    emit(NavSelectedState(event.index));
=======
  int selectedPage = 0;
  //add pages to bottom nav bar
  List<Widget> pages = [];
  NavBloc() : super(NavInitial()) {
    on<NavEvent>((event, emit) {});
    on<ChangeNavSelectedEvent>(selectPage);
  }

  FutureOr<void> selectPage(
    ChangeNavSelectedEvent event,
    Emitter<NavState> emit,
  ) {
    selectedPage = event.index;
    emit(NavSelectedState());
>>>>>>> origin/new-branch
  }
}
