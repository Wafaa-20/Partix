abstract class Routes {
  static const auth = _Paths.auth;
  static const onboarding = _Paths.onboarding;
  static const home = _Paths.home;
  Routes._();
}

abstract class _Paths {
  static const auth = '/auth';
  static const onboarding = '/onboarding';
  static const home = '/home';
  _Paths._();
}

abstract class _Names {
  static const auth = 'auth';
  static const onboarding = 'onboarding';
  static const home = 'home';
  _Names._();
}

abstract class Names {
  static const auth = _Names.auth;
  static const onboarding = _Names.onboarding;
  static const home = _Names.home;
  Names._();
}
