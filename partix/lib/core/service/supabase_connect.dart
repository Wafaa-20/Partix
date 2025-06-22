import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConnect {
  static Supabase? supabase;
  // Initialize of Supabase
  static Future<void> init() async {
    try {
      await dotenv.load(fileName: ".env");
      supabase = await Supabase.initialize(
        url: dotenv.env['url'].toString(),
        anonKey: dotenv.env['key'].toString(),
      );
    } catch (e) {
      throw FormatException("There is error with connect DB");
    }
  }

  //Sign up With Email and password Method
  static Future<User> signUp({
    required String name,
    required String email,
    required String password,
    required String mobile,
  }) async {
    try {
      final userAuth = await supabase!.client.auth.signUp(
        email: email,
        password: password,
      );
      final user = userAuth.user;

      if (user == null) {
        throw FormatException("User was not created.");
      }
      await supabase!.client.from('users').insert({
        'id': user.id,
        'name': name,
        'email': email,
        'mobile': mobile,
      });
      return user;
    } on AuthException catch (e) {
      throw FormatException(e.message);
    } catch (e) {
      throw FormatException("There is error with sign up");
    }
  }

  //Login With Email and password Method
  static Future<User> login({
    required String email,
    required String password,
  }) async {
    try {
      final userAuth = await supabase!.client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (userAuth.user != null) {
        return userAuth.user!;
      } else {
        throw FormatException("Invalid email or password");
      }
    } on AuthException catch (e) {
      throw FormatException(e.message);
    } catch (e) {
      throw FormatException("There is error with logIn");
    }
  }
}
