import 'package:get_it/get_it.dart';
import 'package:partix/core/service/local_storage.dart';

Future<void> setup() async {
  // Register services
  GetIt.I.registerSingletonAsync<LocalStorage>(() async {
    final localStorage = LocalStorage();
    await localStorage.init();
    return localStorage;
  });

  // Register blocs

  // Register repositories

  // Register data sources
}
