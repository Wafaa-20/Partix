import 'package:partix/core/service/supabase_connect.dart';

class AuthLayer {
  String? idUser;
  //SingUp
  signUpMethod({
    required String name,
    required String email,
    required String password,
    required String mobile,
  }) async {
    try {
      final user = await SupabaseConnect.signUp(
        name: name,
        email: email,
        password: password,
        mobile: mobile,
      );
      idUser = user.id;
    } catch (_) {
      rethrow;
    }
  }

  //LogIn
  logInMethod({required String email, required String password}) async {
    try {
      final user = await SupabaseConnect.login(
        email: email,
        password: password,
      );
      idUser = user.id;
    } catch (_) {
      rethrow;
    }
  }
}
