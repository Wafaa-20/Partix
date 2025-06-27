import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeState extends Equatable {
  final IconData? selectedLabel;
  final LatLng? userLocation;
  final String? cityName;
  final List<Map<String, dynamic>> filteredItems;

  const HomeState({
    this.selectedLabel,
    this.userLocation,
    this.cityName,
    this.filteredItems = const [],
  });

  HomeState copyWith({
    IconData? selectedLabel,
    LatLng? userLocation,
    String? cityName,
    List<Map<String, dynamic>>? filteredItems,
  }) {
    return HomeState(
      filteredItems: filteredItems ?? this.filteredItems,
      selectedLabel: selectedLabel ?? this.selectedLabel,
      userLocation: userLocation ?? this.userLocation,
      cityName: cityName ?? this.cityName,
    );
  }

  @override
  List<Object?> get props => [
    selectedLabel,
    userLocation,
    cityName,
    filteredItems,
  ];
}

class AddToCartSucessfuly extends HomeState {
  const AddToCartSucessfuly();
}
