import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partix/features/auth/presentation/pages/login_page.dart';
import 'package:partix/features/auth/presentation/pages/signup_page.dart';
import 'package:partix/features/home/presentation/pages/home_page.dart';
import 'package:partix/features/onboarding/presentation/pages/onboarding_page.dart';

import 'app_routes.dart';

final router = GoRouter(
  initialLocation: '/login',
  navigatorKey: GlobalNavigation.instance.navigatorKey,
  routes: [
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
