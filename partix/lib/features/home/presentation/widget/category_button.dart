// import the material package
import 'package:flutter/material.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final bool isSelected;
  final String label;

  const CategoryButton({
    super.key,
    required this.icon,
    this.onTap,
    this.isSelected = false,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: onTap ?? () {},
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: isSelected ? AppPalette.orangeColor : Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: isSelected
                      ? AppPalette.whiteColor
                      : AppPalette.blueColor,
                  size: 33,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(label, style: TextStyles.sepro40015),
        ],
      ),
    );
  }
}
