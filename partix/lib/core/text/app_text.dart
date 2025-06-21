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
  static const String cityLoading = "city is loading ...";
  static const String welcome = "Welcome";
  static const String unkownen = "unkownen Location";

  static const List categoriesList = [
    {"icon": Icons.grid_view_outlined, "label": "All"},
    {"icon": Icons.monitor_outlined, "label": "Monitor"},
    {"icon": LucideIcons.cpu, "label": "PC Parts"},
    {"icon": Icons.headphones_outlined, "label": "Accessories"},
    {"icon": LucideIcons.gamepad2, "label": "Gaming PC "},
  ];
  static const String search = "Search";
  static const List<Map<String, dynamic>> itemList = [
    {
      "id": 1,
      "title": "LG 27 FHD Monitor",
      "longTitle": "LG 27GP83B-B UltraGear QHD IPS 165Hz Gaming Monitor",
      "image": "asset/monitors_images/monitor1.png",
      "image2": "asset/monitors_images/monitor1_1.png",
      "image3": "asset/monitors_images/monitor1_2.png",
      "category": "computers",
      "price": 439.00,
      "liked": true,
      "screenDetails":
          """QHD IPS Display – Vibrant colors and wide viewing angles for an immersive experience.""",
      "size": "27 QHD Flat (IPS)",
      "refrishRate": "165Hz",
      "responseTime": "1ms (GtG)",
      "syncTech": " NVIDIA G-Sync Compatible",
    },
    {
      "id": 2,
      "title": "32 Odyssey G5",
      "longTitle": "32 Samsung Odyssey G5 G55C QHD 165Hz Curved Gaming Monitor",
      "image": "asset/monitors_images/monitor2.png",
      "image2": "asset/monitors_images/monitor2_1.png",
      "image3": "asset/monitors_images/monitor2_2.png",
      "category": "mouses",
      "price": 6999.00,
      "liked": true,
      "screenDetails": """165Hz QHD Display – Ultra-smooth visuals
  with sharp resolution.""",
      "size": "32 QHD Curved (1000R)",
      "refrishRate": "165Hz",
      "responseTime": "1ms (MPRT)",
      "syncTech": "AMD FreeSync + HDR10",
    },
    {
      "id": 3,
      "title": "Odyssey G9",
      "longTitle":
          "49 Samsung Odyssey G9 Neo QLED DQHD 240Hz Curved Gaming Monitor",
      "image": "asset/monitors_images/monitor3.png",
      "image2": "asset/monitors_images/monitor3_1.png",
      "image3": "asset/monitors_images/monitor3_2.png",
      "category": "mouses",
      "price": 4599.00,
      "liked": true,
      "screenDetails": """Dual QHD Mini LED – Experience next-level immersion
  with astounding detail and contrast.""",
      "size": "49 DQHD Ultrawide Curved (1000R)",
      "refrishRate": "240Hz",
      "responseTime": "1ms (GtG)",
      "syncTech": "AMD FreeSync Premium Pro + HDR2000",
    },
    {
      "id": 4,
      "title": "LG 27 FHD Monitor",
      "longTitle": "LG 27GN65R-B UltraGear FHD IPS 144Hz Gaming Monitor",
      "image": "asset/monitors_images/monitor4.png",
      "image2": "asset/monitors_images/monitor4_1.png",
      "image3": "asset/monitors_images/monitor4_2.png",
      "category": "mouses",
      "price": 7399.00,
      "liked": true,
      "screenDetails":
          """144Hz IPS Display – Fast refresh rates for competitive gaming
  with excellent color accuracy.""",
      "size": "27 FHD Flat (IPS)",
      "refrishRate": "144Hz",
      "responseTime": "1ms (GtG)",
      "syncTech": "AMD FreeSync Premium",
    },
    {
      "id": 5,
      "title": "BenQ XL2546K 24.5",
      "longTitle": "24.5 BenQ ZOWIE XL2546K FHD 240Hz TN Esports Monitor",
      "image": "asset/monitors_images/monitor5.png",
      "image2": "asset/monitors_images/monitor5_1.png",
      "image3": "asset/monitors_images/monitor5_2.png",
      "category": "mouses",
      "price": 1700.00,
      "liked": true,
      "screenDetails": """DyAc+ Technology – Reduces motion blur for
  crystal-clear fast-paced action.""",
      "size": "24.5 FHD Flat (TN)",
      "refrishRate": "240Hz",
      "responseTime": "0.5ms (GTG)",
      "syncTech": "Adaptive Sync",
    },
  ];
  static const String addtoCart = "Add To Cart";
  static const String addedToCart = "Addded To Cart";

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
