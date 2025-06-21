import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

Future<LatLng?> showLocationPickerDialog(BuildContext context) async {
  Position userPosition = await Geolocator.getCurrentPosition();

  LatLng selectedPosition = LatLng(
    userPosition.latitude,
    userPosition.longitude,
  );

  final Completer<GoogleMapController> mapController = Completer();

  return showDialog<LatLng>(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          Marker userMarker = Marker(
            markerId: const MarkerId('user_marker'),
            position: selectedPosition,
            draggable: true,
            onDragEnd: (newPos) {
              setState(() {
                selectedPosition = newPos;
              });
            },
          );

          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: SizedBox(
              width: double.maxFinite,
              height: 400,
              child: Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: selectedPosition,
                      zoom: 15,
                    ),
                    markers: {userMarker},
                    onMapCreated: (controller) {
                      mapController.complete(controller);
                    },
                    onTap: (LatLng newPos) {
                      setState(() {
                        selectedPosition = newPos;
                      });
                    },
                  ),
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SizedBox(
                        width: 180,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(selectedPosition);
                          },
                          child: const Text("Choose"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
