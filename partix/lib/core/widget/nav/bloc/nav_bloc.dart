import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
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
  }
}
