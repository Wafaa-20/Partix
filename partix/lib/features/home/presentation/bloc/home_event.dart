import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

sealed class HomeEvent {}

class CategorySelected extends HomeEvent {
  final IconData selectedLabel;
  CategorySelected(this.selectedLabel);
}

class TabChanged extends HomeEvent {
  final int selectedIndex;
  TabChanged(this.selectedIndex);
}
