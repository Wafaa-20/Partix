import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_theme.dart';

import 'routes/app_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.theme,
      routerConfig: router,
    );
  }
}
