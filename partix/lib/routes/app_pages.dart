import 'package:partix/features/google_map/presentation/pages/google_map_page.dart';
import 'package:partix/features/item_details/presentation/pages/item_details_page.dart';
import 'package:partix/core/widget/nav/page/bottom_nav_bar.dart';
import 'package:partix/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:partix/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_routes.dart';

final router = GoRouter(
  initialLocation: '/home',
  navigatorKey: GlobalNavigation.instance.navigatorKey,
  routes: [
    GoRoute(
      name: Names.google_map,
      path: Routes.google_map,
      builder: (context, state) => const GoogleMapPage(),
    ),

    GoRoute(
      name: Names.onboarding,
      path: Routes.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),

    GoRoute(
      name: Names.home,
      path: Routes.home,
      builder: (context, state) => const BottomNavBar(),
    ),
  ],
);

class GlobalNavigation {
  static final GlobalNavigation instance = GlobalNavigation._internal();
  GlobalNavigation._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
