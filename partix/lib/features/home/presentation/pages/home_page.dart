import 'package:flutter/material.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/extension/navigation.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/custom_text_field2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:partix/features/home/presentation/bloc/home_bloc.dart';
import 'package:partix/features/home/presentation/bloc/home_event.dart';
import 'package:partix/features/home/presentation/bloc/home_state.dart';
import 'package:partix/features/home/presentation/widget/category_button.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:partix/features/home/presentation/widget/item_card.dart';
import 'package:partix/features/item_details/presentation/pages/item_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Builder(
        builder: (context) {
          final bloc = context.read<HomeBloc>();
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 1, width: context.getWidth()),
                  Text(AppText.location, style: TextStyles.sepro40015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: AppPalette.orangeColor,
                      ),
                      DropdownButton<String>(
                        items: [],
                        hint: Text(
                          AppText.addYourLocation,
                          style: TextStyles.sepro40015,
                        ),
                        menuWidth: context.getWidth() * 0.4,
                        underline: SizedBox(),
                        onChanged: (Object? value) {},
                        icon: Icon(Icons.keyboard_arrow_down_sharp),
                      ),
                    ],
                  ),
                  Container(
                    width: context.getWidth() * 0.8,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppPalette.whiteColor,
                    ),
                    child: CustomTextField2(
                      lefticon: Icon(Icons.search, size: 30),
                      controller: bloc.searchController,
                      text: AppText.search,
                    ),
                  ),
                  SizedBox(height: context.getHeight() * 0.02),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: AppText.categoriesList.map((icon) {
                            return CategoryButton(
                              icon: icon,
                              isSelected: state.selectedLabel == icon,
                              onTap: () {
                                context.read<HomeBloc>().add(
                                  CategorySelected(icon),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: AppText.itemList.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.55,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 8,
                              ),
                          itemBuilder: (context, index) {
                            final item = AppText.itemList[index];
                            return ItemCard(
                              image: item['image'],
                              title: item['title'],
                              category: item['category'],
                              price: item['price'],
                              liked: item['liked'],
                              showDetails: () {
                                context.customPush(
                                  ItemDetailsPage(itemId: item['id']),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
