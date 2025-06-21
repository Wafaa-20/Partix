part of 'nav_bloc.dart';

@immutable
sealed class NavState {}

final class NavInitial extends NavState {}

class NavSelectedState extends NavState {
  final int selectedIndex;
  NavSelectedState(this.selectedIndex);
}
