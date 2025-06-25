<<<<<<< HEAD
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
=======
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:partix/features/card/presentation/pages/card_page.dart';
import 'package:partix/features/favorites/presentation/pages/favorites_page.dart';
import 'package:partix/features/home/presentation/pages/home_page.dart';
import 'package:partix/features/profile/presentation/pages/profile_page.dart';
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356

part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
<<<<<<< HEAD
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
=======
  final List<Widget> pages = [
    HomePage(),
    FavoritesPage(),
    CardPage(),
    ProfilePage(),
  ];

  NavBloc() : super(NavSelectedState(0)) {
    on<ChangeNavSelectedEvent>(_onPageChanged);
  }

  void _onPageChanged(ChangeNavSelectedEvent event, Emitter<NavState> emit) {
    emit(NavSelectedState(event.index));
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
  }
}
