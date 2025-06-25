part of 'nav_bloc.dart';

@immutable
sealed class NavState {}

final class NavInitial extends NavState {}
<<<<<<< HEAD
final class NavSelectedState extends NavState {}

=======

class NavSelectedState extends NavState {
  final int selectedIndex;
  NavSelectedState(this.selectedIndex);
}
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
