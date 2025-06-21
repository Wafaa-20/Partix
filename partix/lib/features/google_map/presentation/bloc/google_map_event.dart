import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapEvent {}

class LoadUserLocation extends MapEvent {}

class UpdateLocation extends MapEvent {
  final LatLng position;
  UpdateLocation(this.position);
}
