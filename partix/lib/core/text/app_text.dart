<<<<<<< HEAD
=======
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
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
<<<<<<< HEAD
  //Login Screen
=======

  static const String cancel = "Cancel";
  //Login Screen
  static const String guest = "Continue as a guest";
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
  static const String login = "Login";
  static const String email = "Email";
  static const String hintEmail = "Enter the email";
  static const String password = "Password";
  static const String hintPassword = "Enter the password";
  static const String forgotPassword = "Forgot your password?";
<<<<<<< HEAD
  static const String account = "You do not have an account?";

  //SignUp Screen
  static const String signUp = "sign up";
  static const String mobileNumber = "Mobile number";
  static const String hintmobileNumber = "Enter mobile number";

=======
  static const String or = "OR";
  static const String account = "You do not have an account?";
  static const String register = "Register now";

  //SignUp Screen
  static const String signUp = "Sign up";
  static const String mobileNumber = "Mobile number";
  static const String hintmobileNumber = "Enter mobile number";
  static const String haveAccount = "Already have an account?";

  //card
  static const String cart = "Cart";
  static const String empty = "The Cart is empty";
  static const String shop = "Shop now";
  static const String subtotal = "Subtotal: \$";
  static const String checkout = "Checkout";

  //favorites
  static const String favorites = "Favorites";
  static const String empty2 = "Favorites list is empty";
  static const String item = "Add Item";
  static const String addCart = "Add to Cart";

  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
  //Home
  static const String index = "Index";
  static const String doToday = "What do you want to do today?";
  static const String doTodaySubtitle = "Tap + to add your tasks";
<<<<<<< HEAD
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
=======
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
  //google map

  static const String chooseDeliveryLocation = "Choose a delivery location";
  static const String searchLocation = "Search location";
  static const String confirmLocation = "Confirm Location";
  static const String confirm = "Confirm";
  static const String additionalAddressDetails = "Additional Address Details";
  static const String apartmentHouseNumber = "apartment-house number";
  static const String save = "Save";
  //Bottom nav bar
  static const String calendar = "Calendar";
  static const String profile = "Profile";
  static const String orders = "Orders";
  static const String ordersSubtitle = "My orders";
  static const String preferences = "Preferences";
  static const String preferencesSubtitle = "Push notifications, theme";
  static const String support = "Support & Legal";
  static const String supportSubtitle = "Help center, privacy policy & terms";
  static const String logout = "Logout";
  static const String confirmLogoutMessage =
      "Are you sure you want to log out?";
  //support
  static const String supportDialogTitle = "Need Help?";
  static const String privacyPolicy = "Privacy Policy";
  static const String termsAndConditions = "Terms & Conditions";
  static const String contactSupport = "Contact Support";
  static const String contactSupportMessage = "Please describe your issue.";
  static const String privacyPolicyShortDesc =
      "Learn how we collect, use, and protect your data.";
  static const String termsAndConditionsShortDesc =
      "Understand the rules for using our services.";
  //prefrences
  static const String preferencesDialogTitle = "App Preferences";
  static const String notifications = "Notifications";
  static const String receiveNotifications = "Receive push notifications";
  static const String appTheme = "App Theme";
  static const String noOrder = "There is no Orders";
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
}
