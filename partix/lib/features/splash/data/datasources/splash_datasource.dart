import 'package:partix/features/splash/data/models/splash_model.dart';

abstract class SplashDatasource {
  Future<SplashModel> getSplash();
}

class SplashDatasourceImpl implements SplashDatasource {
  @override
  Future<SplashModel> getSplash() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return SplashModel(
      id: '1',
      name: 'Splash Name',
    );
  }
}
