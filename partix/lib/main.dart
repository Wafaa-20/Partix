import 'package:flutter/material.dart';

import 'app.dart';
import 'core/dependency_injection/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyApp());
}
