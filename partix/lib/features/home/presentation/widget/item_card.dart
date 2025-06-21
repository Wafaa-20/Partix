import 'package:flutter/material.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.category,
    required this.price,
    this.liked = false,
    this.cartFunction,
    this.likeFunction,
    this.showDetails,
  });
  final String image;
  final String title;
  final String category;
  final bool liked;
  final double price;
  final void Function()? cartFunction;
  final void Function()? showDetails;
  final void Function()? likeFunction;
  @override
  Widget build(BuildContext context) {
    final containerwidth = context.getWidth() * 0.45;
    return Container(
      width: containerwidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: AppPalette.whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppPalette.grayColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            width: containerwidth,
            height: context.getHeight() * 0.20,
            child: Stack(
              children: [
                InkWell(
                  onTap: showDetails ?? () {},
                  child: Image.asset(image, fit: BoxFit.fill),
                ),
                Positioned(
                  top: 7,
                  left: 11,
                  child: CircleAvatar(
                    backgroundColor: AppPalette.whiteColor,
                    child: IconButton(
                      onPressed: likeFunction ?? () {},
                      icon: liked
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(
                              Icons.favorite_outline,
                              color: AppPalette.blueColor,
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(title, style: TextStyles.blacksepro40015),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(category, style: TextStyles.sepro40015),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '${price.toStringAsFixed(2)} SR',
              style: TextStyles.blacksepro40015,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 1, width: containerwidth),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(55, 5),
                    backgroundColor: AppPalette.orangeColor,
                    fixedSize: Size.fromHeight(context.getHeight() * 0.028),
                  ),
                  onPressed: cartFunction ?? () {},
                  child: Icon(Icons.add, color: AppPalette.whiteColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
