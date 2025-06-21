import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:partix/features/google_map/presentation/bloc/google_map_event.dart';
import 'package:partix/features/google_map/presentation/bloc/google_map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(const MapState()) {
    on<LoadUserLocation>(_onLoadUserLocation);
    on<UpdateLocation>(_onUpdateLocation);
  }

  Future<void> _onLoadUserLocation(
    LoadUserLocation event,
    Emitter<MapState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final position = await Geolocator.getCurrentPosition();
    final latLng = LatLng(position.latitude, position.longitude);
    emit(state.copyWith(selectedPosition: latLng, isLoading: false));
  }

  void _onUpdateLocation(UpdateLocation event, Emitter<MapState> emit) {
    emit(state.copyWith(selectedPosition: event.position));
  }
}
