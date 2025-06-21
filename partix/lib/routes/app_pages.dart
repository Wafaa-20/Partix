import 'package:partix/features/card/presentation/pages/card_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partix/features/auth/presentation/pages/login_page.dart';
import 'package:partix/features/auth/presentation/pages/signup_page.dart';
import 'package:partix/features/home/presentation/pages/home_page.dart';
import 'package:partix/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:partix/features/google_map/presentation/pages/google_map_page.dart';
import 'package:partix/core/widget/nav/page/bottom_nav_bar.dart';
import 'package:partix/features/profile/presentation/pages/profile_page.dart';
import 'package:partix/features/splash/presentation/pages/splash_page.dart';

import 'app_routes.dart';

final router = GoRouter(
  initialLocation: '/splash',
  navigatorKey: GlobalNavigation.instance.navigatorKey,
  routes: [
    GoRoute(
      name: Names.splash,
      path: Routes.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      name: Names.profile,
      path: Routes.profile,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      name: Names.googleMap,
      path: Routes.googleMap,
      builder: (context, state) => const GoogleMapPage(),
    ),

    GoRoute(
      name: Names.card,
      path: Routes.card,
      builder: (context, state) => const CardPage(),
    ),

    GoRoute(
      name: Names.signup,
      path: Routes.signup,
      builder: (context, state) => const SignupPage(),
    ),
    GoRoute(
      name: Names.login,
      path: Routes.login,
      builder: (context, state) => const LoginPage(),
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
