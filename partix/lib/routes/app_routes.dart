import 'package:partix/features/onboarding/domain/entities/onboarding.dart';

abstract class Routes {
  static const favorites = _Paths.favorites;
  static const googleMap = _Paths.googleMap;
  static const itemDetails = _Paths.itemDetails;
  static const profile = _Paths.profile;
  static const splash = _Paths.splash;
  static const card = _Paths.card;
  static const home = _Paths.home;
  static const onboarding = _Paths.onboarding;
  static const login = _Paths.login;
  static const signup = _Paths.signup;
  Routes._();
}

abstract class _Paths {
  static const favorites = '/favorites';

  static const googleMap = '/google_map';
  static const itemDetails = '/item_details';
  static const profile = '/profile';
  static const splash = '/splash';
  static const card = '/card';
  static const onboarding = '/onboarding';
  static const home = '/home';
  static const login = '/login';
  static const signup = '/signup';
  _Paths._();
}

abstract class _Names {
  static const favorites = 'favorites';

  static const googleMap = 'google_map';
  static const itemDetails = 'item_details';
  static const profile = 'profile';
  static const splash = 'splash';
  static const card = 'card';
  static const onboarding = 'onboarding';
  static const home = 'home';
  static const login = 'login';
  static const signup = 'signup';
  _Names._();
}

abstract class Names {
  static const favorites = _Names.favorites;

  static const googleMap = _Names.googleMap;
  static const itemDetails = _Names.itemDetails;
  static const profile = _Names.profile;
  static const splash = _Names.splash;

  static const card = _Names.card;
  static const onboarding = _Names.onboarding;
  static const home = _Names.home;
  static const login = _Names.login;
  static const signup = _Names.signup;
  Names._();
}
