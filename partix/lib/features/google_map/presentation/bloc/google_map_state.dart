import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapState extends Equatable {
  final LatLng? selectedPosition;
  final bool isLoading;

  const MapState({this.selectedPosition, this.isLoading = true});

  MapState copyWith({LatLng? selectedPosition, bool? isLoading}) {
    return MapState(
      selectedPosition: selectedPosition ?? this.selectedPosition,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [selectedPosition, isLoading];
}
