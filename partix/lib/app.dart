import 'package:flutter/material.dart';
import 'package:partix/core/theme/app_theme.dart';

import 'routes/app_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
<<<<<<< HEAD
=======
      debugShowCheckedModeBanner: false,
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
      theme: AppTheme.theme,
      routerConfig: router,
    );
  }
}
