import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:partix/core/service/supabase_connect.dart';

import 'app.dart';
import 'core/dependency_injection/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await SupabaseConnect.init();
  LocationPermission permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    permission = await Geolocator.requestPermission();
  }

  runApp(const MyApp());
}
