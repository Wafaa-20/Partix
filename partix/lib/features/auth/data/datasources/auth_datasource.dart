import 'package:partix/features/auth/data/models/auth_model.dart';

abstract class AuthDatasource {
  Future<AuthModel> getAuth();
}

class AuthDatasourceImpl implements AuthDatasource {
  @override
  Future<AuthModel> getAuth() async {
    // TODO: implement actual data source logic
    // This is just a placeholder implementation
    return AuthModel(id: '', name: '', email: '', password: '', mobile: '');
  }
}
