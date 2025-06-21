import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
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
        appBar: AppBar(
          backgroundColor: AppPalette.whiteLight3,
          title: Text(
            AppText.chooseDeliveryLocation,
            style: TextStyles.sepro70015,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: AppPalette.blueColor),
          ),
        ),
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
                        hintText: AppText.searchLocation,
                        hintStyle: TextStyle(color: AppPalette.blackColor),
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
                            AppText.confirmLocation,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppPalette.orangeColor,
                            ),
                            onPressed: () {
                              setState(() {
                                _showAdditionalField = true;
                              });
                            },
                            child: Text(
                              AppText.confirm,
                              style: TextStyles.sepro70040,
                            ),
                          ),
                          if (_showAdditionalField) ...[
                            const SizedBox(height: 20),
                            const Text(AppText.additionalAddressDetails),
                            TextField(
                              controller: _additionalAddressController,
                              decoration: const InputDecoration(
                                hintText: AppText.apartmentHouseNumber,
                                hintStyle: TextStyle(
                                  color: AppPalette.blackColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppPalette.orangeColor,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop({
                                  'location': context
                                      .read<MapBloc>()
                                      .state
                                      .selectedPosition,
                                  'details': _additionalAddressController.text,
                                });
                              },
                              child: Text(
                                AppText.save,
                                style: TextStyles.sepro70040,
                              ),
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
