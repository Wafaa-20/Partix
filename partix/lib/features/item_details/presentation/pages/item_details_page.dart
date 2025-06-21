import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/features/item_details/presentation/bloc/item_details_bloc.dart';
import 'package:partix/features/item_details/presentation/bloc/item_details_event.dart';
import 'package:partix/features/item_details/presentation/bloc/item_details_state.dart';
import 'package:partix/features/item_details/presentation/widgets/add_to_cart_dialog.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({super.key, required this.itemId});
  final int itemId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ItemDetailsBloc()..add(LoadItemDetails(itemId)),
      child: Builder(
        builder: (context) {
          final controller = PageController();

          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppPalette.blueColor,
                ),
              ),
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline,
                    color: AppPalette.blueColor,
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: BlocBuilder<ItemDetailsBloc, ItemDetailsState>(
                builder: (context, state) {
                  if (state.item == null) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final item = state.item!;

                  final List<String> itemImages = [
                    item['image'],
                    item['image2'],
                    item['image3'],
                  ];
                  final double doublePrice = item['price'];
                  final String fixedPrice = doublePrice.toStringAsFixed(2);
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(height: 1),
                            Positioned(
                              top: -context.getHeight() * 0.07,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(
                                      context.getWidth() * 0.40,
                                    ),
                                  ),
                                ),
                                width: context.getWidth(),
                                height: context.getHeight() * 0.80,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        SizedBox(
                          height: context.getHeight() * 0.35,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  controller.previousPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: AppPalette.blueColor,
                                ),
                              ),
                              Expanded(
                                child: PageView.builder(
                                  controller: controller,
                                  itemCount: itemImages.length,
                                  itemBuilder: (context, index) {
                                    return Image.asset(
                                      itemImages[index],
                                      fit: BoxFit.contain,
                                    );
                                  },
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  controller.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppPalette.blueColor,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 12),

                        Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: itemImages.length,
                            effect: WormEffect(
                              dotHeight: 10,
                              dotWidth: 20,
                              activeDotColor: AppPalette.blueColor,
                              type: WormType.thin,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16),
                              Text(
                                item['longTitle'],
                                style: TextStyles.blacksepro50020,
                              ),
                              SizedBox(height: 8),
                              Text(
                                item['category'],
                                style: TextStyles.sepro40015,
                              ),
                              SizedBox(height: 8),
                              Text(item['screenDetails']),
                              SizedBox(height: 8),
                              Text('Size: ${item['size']}'),
                              SizedBox(height: 8),
                              Text('Refrish Rate: ${item['refrishRate']}'),
                              SizedBox(height: 8),
                              Text('Response Time: ${item['responseTime']}'),
                              SizedBox(height: 8),
                              Text('Sync Tech: ${item['syncTech']}'),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '$fixedPrice SR',
                                    style: TextStyles.sepro50036,
                                  ),
                                  SizedBox(height: context.getHeight() * 0.10),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(75, 5),
                                      backgroundColor: AppPalette.orangeColor,
                                      fixedSize: Size.fromHeight(
                                        context.getHeight() * 0.032,
                                      ),
                                    ),
                                    onPressed: () {
                                      print(item['id']);
                                      showAddToCartDialog(context);
                                    },
                                    child: Text(
                                      AppText.addtoCart,
                                      style: TextStyles.sepro50017,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
