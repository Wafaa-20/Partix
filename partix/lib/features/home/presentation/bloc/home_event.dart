import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

sealed class HomeEvent {}

class CategorySelected extends HomeEvent {
  final IconData selectedLabel;
  CategorySelected(this.selectedLabel);
}

class LocationUpdated extends HomeEvent {
  final LatLng location;
  final String cityName;

  LocationUpdated({required this.location, required this.cityName});
}

class SearchEvant extends HomeEvent {
  final String search;

  SearchEvant({required this.search});
}

class AddToCart extends HomeEvent {
  final int id;

  AddToCart({required this.id});
}
