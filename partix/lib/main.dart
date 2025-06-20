import 'package:flutter/material.dart';

import 'app.dart';
import 'core/dependency_injection/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}
