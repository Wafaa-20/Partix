// lib/features/profile/presentation/widgets/support_dialog.dart

import 'package:flutter/material.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportDialog extends StatelessWidget {
  const SupportDialog({super.key});
  //open linke
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

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
              AppText.supportDialogTitle,
              style: TextStyles.sepro40028,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            // Policy Button
            ElevatedButton(
              onPressed: () {
                _launchURL('https://www.example.com/privacy-policy');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppPalette.blueColor.withOpacity(0.3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(AppText.privacyPolicy, style: TextStyles.sepro50017),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                _launchURL('https://www.example.com/terms-and-conditions');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppPalette.blueColor.withOpacity(0.3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                AppText.termsAndConditions,
                style: TextStyles.sepro50017,
              ),
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _launchURL(
                  'mailto:support@example.com?subject=Support Request&body=${AppText.contactSupportMessage}',
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppPalette.grayColor2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(AppText.contactSupport, style: TextStyles.sepro50017),
            ),
            const SizedBox(height: 16),

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
