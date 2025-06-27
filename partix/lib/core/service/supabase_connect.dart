import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConnect {
  static Supabase? supabase;
  // Initialize of Supabase
  static Future<void> init() async {
    try {
      await dotenv.load(fileName: ".env");

      log("url: ${dotenv.env['url']}");
      log("key: ${dotenv.env['key']}");

      supabase = await Supabase.initialize(
        url: dotenv.env['url'].toString(),
        anonKey: dotenv.env['key'].toString(),
      );
      log("supabase: $supabase");
    } catch (e) {
      log("ERROR in Supabase init: $e");
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
      log(' before subapase login ');
      log('suba ba : $supabase ');

      log('supabase clint : ${supabase!.client} ');
      log('supabase clint auth : ${supabase!.client.auth} ');
      final userAuth = await supabase!.client.auth
          .signInWithPassword(email: email, password: password)
          .timeout(
            Duration(seconds: 10),
            onTimeout: () {
              throw Exception("⏰ Timeout: Supabase did not respond.");
            },
          );
      debugPrint("response userauth  : ${userAuth}");

      if (userAuth.user != null) {
        return userAuth.user!;
      } else {
        throw FormatException("Invalid email or password");
      }
    } on AuthException catch (e) {
      log("AuthException  : $e");
      throw FormatException(e.message);
    } catch (e) {
      log("FormatException  : $e");
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

  static Future<List<Map<String, dynamic>>> getCartItems() async {
    final response = await supabase!.client.from('cart').select('item_id,id');
    print(response);
    return (response as List)
        .map((row) => {'item_id': row['item_id'], 'id': row['id']})
        .toList();
  }

  static Future<void> deleteCartItem(int cartId) async {
    try {
      final response = await supabase!.client
          .from('cart')
          .delete()
          .eq('id', cartId);
    } catch (e) {
      print(e);
    }
  }
}
