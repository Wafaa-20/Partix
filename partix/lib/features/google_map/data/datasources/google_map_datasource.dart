import 'package:partix/features/google_map/data/models/google_map_model.dart';

abstract class Google_mapDatasource {
  Future<Google_mapModel> getGoogle_map();
}

class Google_mapDatasourceImpl implements Google_mapDatasource {
  @override
  Future<Google_mapModel> getGoogle_map() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return Google_mapModel(
      id: '1',
      name: 'Google_map Name',
    );
  }
}
