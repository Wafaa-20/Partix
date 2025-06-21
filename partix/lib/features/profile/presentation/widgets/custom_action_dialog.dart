import 'package:flutter/material.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';

class CustomActionDialog extends StatelessWidget {
  final String title;
  final String content;
  final String confirmButtonText;
  final String cancelButtonText;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;

  const CustomActionDialog({
    super.key,
    required this.title,
    required this.content,
    required this.confirmButtonText,
    this.cancelButtonText = 'Cancel',
    required this.onConfirm,
    this.onCancel,
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
          children: [
            Text(
              title,
              style: TextStyles.sepro40028,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              content,
              style: TextStyles.sepro40015,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (onCancel != null)
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: AppPalette.orangeColor.withOpacity(
                          0.2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () {
                        onCancel!();
                      },
                      child: Text(
                        cancelButtonText,
                        style: TextStyles.sepro40015.copyWith(
                          color: AppPalette.whiteLight,
                        ),
                      ),
                    ),
                  ),
                if (onCancel != null) const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppPalette.blueColor3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: () {
                      onConfirm();
                    },
                    child: Text(
                      confirmButtonText,
                      style: TextStyles.sepro40028.copyWith(
                        color: AppPalette.whiteColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
