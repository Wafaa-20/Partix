//Shared Preferences
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences sharedPreferences;

  //Initialize of Shared Preferences
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  //store or save data to Shared Preferences
  Future<void> saveData({required String key, required dynamic value}) async {
    if (value is String) {
      await sharedPreferences.setString(key, value);
    } else if (value is int) {
      await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      await sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      await sharedPreferences.setBool(key, value);
    } else if (value is List<String>) {
      await sharedPreferences.setStringList(key, value);
    } else {
      throw Exception('error');
    }
  }

  //get any type of data from Shared Preferences already saved
  dynamic getData({required String key}) {
    return sharedPreferences.getString(key);
  }

  // get data from Shared Preferences
  // Future<CategoryModel?> getCategory() async {
  //   final convertToString = getData(key: 'category');
  //   if (convertToString != null && convertToString is String) {
  //     return CategoryModelMapper.fromJson(convertToString);
  //   }

  //   return null;
  // }
  // Future<CategoryModel?> getCategory() async {
  //   final convertToString = getData(key: 'category');
  //   if (convertToString != null && convertToString is String) {
  //     final jsonMap = jsonDecode(convertToString);
  //     return CategoryModel.fromMapForShared(jsonMap);
  //   }
  //   return null;
  // }

  // Future<void> saveCategoryList({
  //   required List<CategoryModel> categories,
  // }) async {
  //   final encodedList = categories
  //       .map((cat) => jsonEncode(cat.mapForAddShared()))
  //       .toList();
  //   await saveData(key: 'categories', value: encodedList);
  // }
}
