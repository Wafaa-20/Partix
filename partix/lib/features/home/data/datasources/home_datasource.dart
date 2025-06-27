import 'package:partix/features/home/data/models/home_model.dart';

abstract class HomeDatasource {
  Future<HomeModel> getHome();
}

class HomeDatasourceImpl implements HomeDatasource {
  @override
  Future<HomeModel> getHome() async {
    return HomeModel(id: '1', name: 'Home Name');
  }
}
