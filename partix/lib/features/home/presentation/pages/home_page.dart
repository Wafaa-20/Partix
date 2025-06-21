import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/extension/navigation.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/custom_text_field2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:partix/features/google_map/presentation/pages/google_map_page.dart';
import 'package:partix/features/home/presentation/bloc/home_bloc.dart';
import 'package:partix/features/home/presentation/bloc/home_event.dart';
import 'package:partix/features/home/presentation/bloc/home_state.dart';
import 'package:partix/features/home/presentation/widget/category_button.dart';
import 'package:partix/features/home/presentation/widget/item_card.dart';
import 'package:partix/features/item_details/presentation/pages/item_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.usernick = 'user'});
  final String? usernick;
  @override
  Widget build(BuildContext context) {
    LatLng? userLocation;
    String? cityName;
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Builder(
        builder: (context) {
          final bloc = context.read<HomeBloc>();
          final state = context.watch<HomeBloc>().state;
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 1, width: context.getWidth()),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                  color: AppPalette.orangeColor,
                                ),
                                Text(
                                  AppText.location,
                                  style: TextStyles.sepro40015,
                                ),
                              ],
                            ),
                            Text(
                              '${AppText.welcome} ${usernick ?? ''}',
                              style: TextStyles.sepro50017,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                return InkWell(
                                  onTap: () async {
                                    final locationDetails = await context
                                        .customPushWithReturnValue(
                                          GoogleMapPage(),
                                        );
                                    if (locationDetails != null) {
                                      print(locationDetails['location']);
                                      print(locationDetails['details']);
                                    }

                                    final userLocation =
                                        locationDetails['location'];

                                    if (userLocation != null) {
                                      final placemarks =
                                          await placemarkFromCoordinates(
                                            userLocation.latitude,
                                            userLocation.longitude,
                                          );

                                      final city = placemarks.isNotEmpty
                                          ? placemarks.first.locality ??
                                                AppText.unkownen
                                          : AppText.unkownen;

                                      bloc.add(
                                        LocationUpdated(
                                          location: userLocation,
                                          cityName: city,
                                        ),
                                      );
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Text(
                                      state.userLocation != null
                                          ? (state.cityName ??
                                                AppText.cityLoading)
                                          : AppText.addYourLocation,
                                      style: TextStyles.sepro40015,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: AppPalette.whiteColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.getHeight() * 0.02),
                  Container(
                    width: context.getWidth() * 0.85,
                    height: 35,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppPalette.whiteColor,
                    ),
                    child: CustomTextField2(
                      lefticon: Icon(Icons.search, size: 30),
                      controller: bloc.searchController,
                      onchange: (p0) => bloc.add(SearchEvant(search: p0)),
                      text: AppText.search,
                    ),
                  ),
                  SizedBox(height: context.getHeight() * 0.02),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: AppText.categoriesList.map((category) {
                            return CategoryButton(
                              icon: category['icon'],
                              label: category['label'],
                              isSelected:
                                  state.selectedLabel == category['icon'],
                              onTap: () {
                                bloc.add(CategorySelected(category['icon']));
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
                          itemCount: state.filteredItems.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.55,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 8,
                              ),
                          itemBuilder: (context, index) {
                            final item = state.filteredItems[index];
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
