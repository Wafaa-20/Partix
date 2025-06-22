import 'package:flutter/material.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/service/notification_service.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/button/custom_button.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.pay),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: Container(
            height: 1,
            width: context.getWidth() * 0.95,
            color: AppPalette.whiteLight3,
          ),
        ),
      ),
      body: Column(
        children: [
          CustomButton(
            color: AppPalette.orangeColor,

            onPressed: () async {
              await NotificationService.sendNotificationByExternalId(
                externalUserId: ['2'],
                title: 'Payment Successful',
                message: 'Thank you for your purchase!',
              );
            },

            child: Text("Pay"),
          ),
        ],
      ),
    );
  }
}
