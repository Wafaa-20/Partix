import 'package:get_it/get_it.dart';
import 'package:partix/core/service/local_storage.dart';
import 'package:partix/features/auth/data/datasources/auth_layer.dart';

Future<void> setup() async {
  // Register services
  /*GetIt.I.registerSingletonAsync<LocalStorage>(() async {
    final localStorage = LocalStorage();
    await localStorage.init();
    return localStorage;
  });
  GetIt.I.registerSingleton<AuthLayer>(AuthLayer());*/
}
