import 'package:partix/features/home/data/models/home_model.dart';

abstract class HomeDatasource {
  Future<HomeModel> getHome();
}

class HomeDatasourceImpl implements HomeDatasource {
  @override
  Future<HomeModel> getHome() async {
<<<<<<< HEAD
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return HomeModel(
      id: '1',
      name: 'Home Name',
    );
=======
    return HomeModel(id: '1', name: 'Home Name');
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
  }
}
