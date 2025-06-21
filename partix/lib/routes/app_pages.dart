import 'package:partix/features/profile/presentation/pages/profile_page.dart';
import 'package:partix/features/splash/presentation/pages/splash_page.dart';
import 'package:partix/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:partix/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_routes.dart';

final router = GoRouter(
  initialLocation: '/profile',
  navigatorKey: GlobalNavigation.instance.navigatorKey,
  routes: [
    GoRoute(
      name: Names.profile,
      path: Routes.profile,
      builder: (context, state) => const ProfilePage(),
    ),

    GoRoute(
      name: Names.splash,
      path: Routes.splash,
      builder: (context, state) => const SplashPage(),
    ),

    GoRoute(
      name: Names.onboarding,
      path: Routes.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),

    GoRoute(
      name: Names.home,
      path: Routes.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

class GlobalNavigation {
  static final GlobalNavigation instance = GlobalNavigation._internal();
  GlobalNavigation._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
