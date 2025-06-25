import 'package:flutter/material.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/button/custom_button.dart';
import 'package:partix/core/widget/custom_card.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.favorites),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: Container(
            height: 1,
            width: context.getWidth() * 0.95,
            color: AppPalette.whiteLight3,
          ),
        ),
      ),
      // EmptyFavoritesWidget(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPhotoCard(
                  height: context.getHeight() * 0.15,
                  width: context.getWidth() * 0.35,
                  color: AppPalette.whiteColor.withValues(alpha: 0.3),
                  leftRadius: Radius.circular(15),
                  child: Image.asset(
                    "asset/image/monter.png",
                    height: 135,
                    fit: BoxFit.contain,
                  ),
                ),
                CustomPhotoCard(
                  height: context.getHeight() * 0.15,
                  width: context.getWidth() * 0.56,
                  rightRadius: Radius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "32\" Odyssey G5",
                              style: TextStyles.sepro40015,
                            ),
                            Icon(Icons.delete_outline),
                          ],
                        ),

                        Text(
                          "Monitor",
                          style: TextStyles.sepro40015.copyWith(
                            color: AppPalette.grayColor,
                          ),
                        ),

                        Text("6,999.00 SR", style: TextStyles.sepro40015),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CustomButton(
                            width: 97,
                            height: 32,
                            color: AppPalette.orangeColor,
                            onPressed: () {},
                            child: Text(
                              AppText.addCart,
                              style: TextStyles.sepro40012.copyWith(
                                color: AppPalette.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
