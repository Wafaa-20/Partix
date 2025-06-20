import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AppText {
  static const String partix = "Partix";
  //Onboarding
  static const String title1 = "Welcome to Partix";
  static const String subTitle1 = """Your go-to app for PC parts, laptops, 
and custom builds.""";
  static const String title2 = "Easy to Use";
  static const String subTitle2 = """Browse, connect, and get what you need ,
fast and smooth.""";
  static const String title3 = "Let’s Start";
  static const String subTitle3 = """Jump in and explore the best, 
parts around you.""";
  static const String next = "NEXT";
  static const String skip = "SKIP";
  static const String back = "BACK";
  static const String start = "Start";
  //Login Screen
  static const String login = "Login";
  static const String email = "Email";
  static const String hintEmail = "Enter the email";
  static const String password = "Password";
  static const String hintPassword = "Enter the password";
  static const String forgotPassword = "Forgot your password?";
  static const String account = "You do not have an account?";

  //SignUp Screen
  static const String signUp = "sign up";
  static const String mobileNumber = "Mobile number";
  static const String hintmobileNumber = "Enter mobile number";

  //Home
  static const String index = "Index";
  static const String doToday = "What do you want to do today?";
  static const String doTodaySubtitle = "Tap + to add your tasks";
  static const String location = "Location";
  static const String addYourLocation = "Add your Location";

  static const List categoriesList = [
    Icons.grid_view_outlined,
    Icons.monitor_outlined,
    LucideIcons.cpu,
    Icons.headphones_outlined,
    LucideIcons.gamepad2,
  ];
  static const String search = "Search";
  static const List<Map<String, dynamic>> itemList = [
    {
      "id": 1,
      "title": "computer",
      "longTitle": "High Performance Gaming Computer",
      "image": "asset/monitors_images/monitor1.png",
      "image2": "asset/monitors_images/monitor1_1.png",
      "image3": "asset/monitors_images/monitor1_2.png",
      "category": "computers",
      "price": 1000.00,
      "liked": true,
      "screenDetails": "27 inch, 2560x1440 QHD, IPS",
      "size": "27 inches",
      "refrishRate": "144 Hz",
      "responseTime": "1 ms",
      "Sync Tech": "G-Sync Compatible",
    },
    {
      "id": 2,
      "title": "mouse",
      "longTitle": "Ergonomic Wireless Mouse",
      "image": "asset/monitors_images/monitor2.png",
      "image2": "asset/monitors_images/monitor2_1.png",
      "image3": "asset/monitors_images/monitor2_2.png",
      "category": "mouses",
      "price": 10.00,
      "liked": true,
      "screenDetails": "N/A",
      "size": "Standard Size",
      "refrishRate": "N/A",
      "responseTime": "N/A",
      "Sync Tech": "Bluetooth 5.0",
    },
    {
      "id": 3,
      "title": "mouse",
      "longTitle": "Gaming Mouse with RGB",
      "image": "asset/monitors_images/monitor3.png",
      "image2": "asset/monitors_images/monitor3_1.png",
      "image3": "asset/monitors_images/monitor3_2.png",
      "category": "mouses",
      "price": 15.00,
      "liked": true,
      "screenDetails": "N/A",
      "size": "Medium",
      "refrishRate": "N/A",
      "responseTime": "1 ms",
      "Sync Tech": "Wired USB",
    },
    {
      "id": 4,
      "title": "mouse",
      "longTitle": "Portable Travel Mouse",
      "image": "asset/monitors_images/monitor4.png",
      "image2": "asset/monitors_images/monitor4_1.png",
      "image3": "asset/monitors_images/monitor4_2.png",
      "category": "mouses",
      "price": 8.00,
      "liked": true,
      "screenDetails": "N/A",
      "size": "Compact",
      "refrishRate": "N/A",
      "responseTime": "N/A",
      "Sync Tech": "Bluetooth",
    },
    {
      "id": 5,
      "title": "mouse",
      "longTitle": "High Precision Wired Mouse",
      "image": "asset/monitors_images/monitor5.png",
      "image2": "asset/monitors_images/monitor5_1.png",
      "image3": "asset/monitors_images/monitor5_2.png",
      "category": "mouses",
      "price": 12.00,
      "liked": true,
      "screenDetails": "N/A",
      "size": "Standard",
      "refrishRate": "N/A",
      "responseTime": "2 ms",
      "Sync Tech": "Wired USB",
    },
  ];

  //Bottom nav bar
  static const String calendar = "Calendar";
  static const String profile = "Profile";
  //Bottom Sheet
  static const String task = "Add Task";
  static const String hintTask = "Do math homework";
  static const String description = "Description";
  static const String hintDescription = "Do chapter 2 to 5 for next week";

  //Flag
  static const String priority = "Task Priority";
  static const String cancel = "Cancel";
  static const String save = "Save";
  static const String time = "Choose Time";

  //Category Screens
  static const String category = "Create new category";
  static const String categoryName = "Category name :";
  static const String hintCategory = "Category name";
  static const String categoryIcon = "Category icon :";
  static const String library = "Choose icon from library";
  static const String categoryColor = "Category color :";
  static const String create = "Create Category";
  static const String addCategory = "Add Category";
  static const String chooseCategory = "Choose Category";
}
