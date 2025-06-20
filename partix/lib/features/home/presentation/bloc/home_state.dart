import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeState {
  final IconData? selectedLabel;
  final int currentIndex;

  const HomeState({this.selectedLabel, this.currentIndex = 0});

  HomeState copyWith({IconData? selectedLabel, int? currentIndex}) {
    return HomeState(
      selectedLabel: selectedLabel ?? this.selectedLabel,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
