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
    required String email,
    required String password,
  }) async {
    try {
      final userAuth = await supabase!.client.auth.signUp(
        email: email,
        password: password,
      );
      if (userAuth.user == null) {
        return userAuth.user!;
      } else {
        throw FormatException("user is exist");
      }
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

  static Future<void> addToCart({
    required int itemId,
    required String category,
    required double price,
    required int quantity,
  }) async {
    int userId = 1;
    try {
      final response = await supabase!.client.from('cart').insert({
        'item_id': itemId,
        'category': category,
        'price': price,
        'quantity': quantity,
        'user_id': userId,
        'total': price,
      }).select(); // optional if you want to get inserted row

      if (response == null || response.isEmpty) {
        throw Exception("Failed to add to cart.");
      }
    } catch (e) {
      throw Exception("Error while adding to cart: $e");
    }
  }
}
