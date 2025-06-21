import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:partix/features/google_map/presentation/bloc/google_map_bloc.dart';
import 'package:partix/features/google_map/presentation/bloc/google_map_event.dart';
import 'package:partix/features/google_map/presentation/bloc/google_map_state.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  final Completer<GoogleMapController> _mapController = Completer();
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _additionalAddressController =
      TextEditingController();
  bool _showAdditionalField = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MapBloc()..add(LoadUserLocation()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Choose a delivery location')),
        body: BlocBuilder<MapBloc, MapState>(
          builder: (context, state) {
            if (state.isLoading || state.selectedPosition == null) {
              return const Center(child: CircularProgressIndicator());
            }

            final marker = Marker(
              markerId: const MarkerId('user_marker'),
              position: state.selectedPosition!,
              draggable: true,
              onDragEnd: (pos) {
                context.read<MapBloc>().add(UpdateLocation(pos));
              },
            );

            return Stack(
              children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: state.selectedPosition!,
                    zoom: 15,
                  ),
                  markers: {marker},
                  onMapCreated: (controller) =>
                      _mapController.complete(controller),
                  onTap: (pos) =>
                      context.read<MapBloc>().add(UpdateLocation(pos)),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  right: 16,
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: 'Search location',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                      ),
                      onSubmitted: (value) async {
                        final locations = await locationFromAddress(value);
                        if (locations.isNotEmpty) {
                          final loc = LatLng(
                            locations.first.latitude,
                            locations.first.longitude,
                          );
                          context.read<MapBloc>().add(UpdateLocation(loc));
                          final controller = await _mapController.future;
                          controller.animateCamera(CameraUpdate.newLatLng(loc));
                        }
                      },
                    ),
                  ),
                ),

                // Draggable Bottom Sheet
                DraggableScrollableSheet(
                  initialChildSize: 0.1,
                  minChildSize: 0.1,
                  maxChildSize: 0.4,
                  builder: (context, scrollController) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                      ),
                      child: ListView(
                        controller: scrollController,
                        padding: const EdgeInsets.all(16),
                        children: [
                          Center(
                            child: Container(
                              width: 40,
                              height: 5,
                              margin: const EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const Text(
                            "Confirm Location",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _showAdditionalField = true;
                              });
                            },
                            child: const Text("Confirm"),
                          ),
                          if (_showAdditionalField) ...[
                            const SizedBox(height: 20),
                            const Text("Additional Address Details"),
                            TextField(
                              controller: _additionalAddressController,
                              decoration: const InputDecoration(
                                hintText: 'apartment-house number',
                              ),
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop({
                                  'location': context
                                      .read<MapBloc>()
                                      .state
                                      .selectedPosition,
                                  'details': _additionalAddressController.text,
                                });
                              },
                              child: const Text("Save"),
                            ),
                          ],
                        ],
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
