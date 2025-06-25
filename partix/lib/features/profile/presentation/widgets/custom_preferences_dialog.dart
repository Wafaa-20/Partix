import 'package:flutter/material.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';

class CustomPreferencesDialog extends StatelessWidget {
  final bool receiveNotifications;
  final bool isDarkModeEnabled;
  final ValueChanged<bool> onReceiveNotificationsChanged;
  final ValueChanged<bool> onIsDarkModeEnabledChanged;

  const CustomPreferencesDialog({
    super.key,
    required this.receiveNotifications,
    required this.isDarkModeEnabled,
    required this.onReceiveNotificationsChanged,
    required this.onIsDarkModeEnabledChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      backgroundColor: AppPalette.blueColor,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppText.preferencesDialogTitle,
              style: TextStyles.sepro40028,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppText.receiveNotifications,
                  style: TextStyles.sepro50017,
                ),
                Switch(
                  value: receiveNotifications,
                  onChanged: (newValue) {
                    onReceiveNotificationsChanged(newValue);
                  },
                  activeColor: AppPalette.blueColor3,
                  inactiveThumbColor: AppPalette.grayColor,
                  inactiveTrackColor: AppPalette.grayColor.withOpacity(0.5),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Divider(color: AppPalette.whiteColor.withOpacity(0.2)),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppText.appTheme, style: TextStyles.sepro50017),
                Switch(
                  value: isDarkModeEnabled,
                  onChanged: (newValue) {
                    onIsDarkModeEnabledChanged(newValue);
                  },
                  activeColor: AppPalette.blueColor3,
                  inactiveThumbColor: AppPalette.grayColor,
                  inactiveTrackColor: AppPalette.grayColor.withOpacity(0.5),
                ),
              ],
            ),

            const SizedBox(height: 24),

            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(AppText.cancel, style: TextStyles.sepro40015),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
