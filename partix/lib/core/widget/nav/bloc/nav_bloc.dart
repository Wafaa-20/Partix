import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:partix/features/home/presentation/pages/home_page.dart';

part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
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
  }
}
