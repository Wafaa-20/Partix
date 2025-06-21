import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/features/profile/data/models/profile_model.dart';
import 'package:partix/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:partix/features/profile/presentation/widgets/custom_action_dialog.dart';
import 'package:partix/features/profile/presentation/widgets/custom_preferences_dialog.dart';
import 'package:partix/features/profile/presentation/widgets/support_dialog.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 43),
                Text(AppText.profile, style: TextStyles.sepro40028),
                SizedBox(height: 8),
                Divider(thickness: 0.5, color: AppPalette.lineColor),
                Expanded(
                  child: BlocConsumer<ProfileBloc, ProfileState>(
                    listener: (context, state) {
                      if (state is ProfileShowDialog) {
                        if (state.dialogType == 'logoutConfirmation') {
                          showDialog(
                            context: context,
                            builder: (BuildContext dialogContext) {
                              return CustomActionDialog(
                                title: AppText.logout,
                                content: AppText.confirmLogoutMessage,
                                confirmButtonText: AppText.logout,
                                cancelButtonText: AppText.cancel,
                                onConfirm: () {
                                  context.read<ProfileBloc>().add(
                                    ConfirmLogout(),
                                  );
                                  Navigator.of(dialogContext).pop();
                                },
                                onCancel: () {
                                  Navigator.of(dialogContext).pop();
                                },
                              );
                            },
                          );
                        } else if (state.dialogType ==
                            'showPreferencesDialog') {
                          showDialog(
                            context: context,
                            builder: (BuildContext dialogContext) {
                              return CustomPreferencesDialog(
                                receiveNotifications: false,
                                isDarkModeEnabled: false,
                                onReceiveNotificationsChanged: (bool value) {},
                                onIsDarkModeEnabledChanged: (bool value) {},
                              );
                            },
                          );
                        } else if (state.dialogType == 'showSupportDialog') {
                          showDialog(
                            context: context,
                            builder: (BuildContext dialogContext) {
                              return SupportDialog();
                            },
                          );
                        } else if (state.dialogType == 'noOrdersFound') {
                          showDialog(
                            context: context,
                            builder: (BuildContext dialogContext) {
                              return CustomActionDialog(
                                title: AppText.orders,
                                content: AppText.noOrder,
                                confirmButtonText: AppText.back,

                                onConfirm: () {
                                  Navigator.of(dialogContext).pop();
                                },
                                cancelButtonText: '',
                              );
                            },
                          );
                        }
                      } else if (state is ProfileLogoutSuccess) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Logged out successfully!',
                              style: TextStyle(color: AppPalette.whiteColor),
                            ),
                            backgroundColor: AppPalette.grayColor,
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: settingsSections.length,
                        itemBuilder: (context, index) {
                          final item = settingsSections[index];
                          String subtitleText = item.subtitle ?? '';

                          if (item.type == 'preferences') {
                            subtitleText = AppText.preferencesSubtitle;
                          }

                          return Column(
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 25,
                                  horizontal: 1,
                                ),
                                title: Text(
                                  item.title,
                                  style: TextStyles.sepro50017,
                                ),
                                subtitle: subtitleText.isNotEmpty
                                    ? Text(
                                        subtitleText,
                                        style: TextStyles.sepro40015,
                                      )
                                    : null,
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppPalette.whiteColor,
                                  size: 16,
                                ),
                                onTap: () {
                                  context.read<ProfileBloc>().add(
                                    ProfileItemClicked(item.type, null),
                                  );
                                },
                              ),
                              if (index < settingsSections.length - 1)
                                Divider(
                                  color: AppPalette.lineColor,
                                  height: 1,
                                  thickness: 0.5,
                                ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
