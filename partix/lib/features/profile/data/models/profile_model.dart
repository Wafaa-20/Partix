import 'package:partix/core/text/app_text.dart';

class ProfileModel {
  final String title;
  final String? subtitle;
  final String type;

  ProfileModel({required this.title, this.subtitle, required this.type});
}

List<ProfileModel> settingsSections = [
  ProfileModel(
    title: AppText.orders,
    subtitle: AppText.ordersSubtitle,
    type: "orders",
  ),
  ProfileModel(
    title: AppText.preferences,
    subtitle: AppText.preferencesSubtitle,
    type: "preferences",
  ),
  ProfileModel(
    title: AppText.support,
    subtitle: AppText.supportSubtitle,
    type: "support",
  ),
  ProfileModel(title: AppText.logout, type: "logout"),
];
