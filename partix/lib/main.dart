import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'app.dart';
import 'core/dependency_injection/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
<<<<<<< HEAD
=======
  LocationPermission permission = await Geolocator.checkPermission();
      permission == LocationPermission.deniedForever) {
    permission = await Geolocator.requestPermission();
  }

>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
  runApp(const MyApp());
}
