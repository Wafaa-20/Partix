part of 'nav_bloc.dart';

@immutable
sealed class NavState {}

final class NavInitial extends NavState {}
<<<<<<< HEAD

class NavSelectedState extends NavState {
  final int selectedIndex;
  NavSelectedState(this.selectedIndex);
}
=======
final class NavSelectedState extends NavState {}

>>>>>>> origin/new-branch
