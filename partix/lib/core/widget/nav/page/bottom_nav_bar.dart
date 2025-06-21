import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:partix/core/extension/git_size_screen.dart';
import 'package:partix/core/theme/app_palette.dart';
import 'package:partix/core/widget/nav/bloc/nav_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBloc(),
      child: Builder(
        builder: (context) {
          final bloc = context.read<NavBloc>();
          return BlocBuilder<NavBloc, NavState>(
            builder: (context, state) {
              int currentIndex = 0;
              if (state is NavSelectedState) {
                currentIndex = state.selectedIndex;
              }

              final bloc = context.read<NavBloc>();

              return Scaffold(
                body: bloc.pages[currentIndex],

                bottomNavigationBar: Container(
                  width: context.getWidth(),
                  height: context.getHeight() * 0.13,
                  color: Colors.transparent,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppPalette.whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    width: context.getWidth() * 0.9,
                    height: context.getHeight() * 0.08,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              bloc.add(ChangeNavSelectedEvent(index: 0));
                            },
                            icon: Icon(
                              LucideIcons.home,
                              color: currentIndex == 0
                                  ? AppPalette.blueColor
                                  : Colors.grey,
                              size: currentIndex == 0 ? 32 : 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              bloc.add(ChangeNavSelectedEvent(index: 1));
                            },
                            icon: Icon(
                              Icons.favorite_outline,
                              color: currentIndex == 1
                                  ? AppPalette.blueColor
                                  : Colors.grey,
                              size: currentIndex == 1 ? 32 : 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              bloc.add(ChangeNavSelectedEvent(index: 2));
                            },
                            icon: Icon(
                              LucideIcons.shoppingBag,
                              color: currentIndex == 2
                                  ? AppPalette.blueColor
                                  : Colors.grey,
                              size: currentIndex == 2 ? 32 : 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              bloc.add(ChangeNavSelectedEvent(index: 3));
                            },
                            icon: Icon(
                              LucideIcons.user2,
                              color: currentIndex == 3
                                  ? AppPalette.blueColor
                                  : Colors.grey,
                              size: currentIndex == 3 ? 32 : 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
