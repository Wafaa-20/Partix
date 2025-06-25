import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:partix/core/service/supabase_connect.dart';

import 'app.dart';
import 'core/dependency_injection/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await SupabaseConnect.init();
  OneSignal.initialize("c84c1557-1479-4080-9c51-1794438ed802");
  OneSignal.Notifications.requestPermission(true);
  await OneSignal.login('2');

  LocationPermission permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    permission = await Geolocator.requestPermission();
  }

  runApp(const MyApp());
}
