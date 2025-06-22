import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:partix/features/card/presentation/pages/card_page.dart';
import 'package:partix/features/favorites/presentation/pages/favorites_page.dart';
import 'package:partix/features/home/presentation/pages/home_page.dart';
import 'package:partix/features/profile/presentation/pages/profile_page.dart';

part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
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
  }
}
