import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/features/home/presentation/bloc/home_event.dart';
import 'package:partix/features/home/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TextEditingController searchController = TextEditingController();
  HomeBloc()
    : super(
        HomeState(
          selectedLabel: AppText.categoriesList[0]['icon'],
          filteredItems: AppText.itemList,
        ),
      ) {
    on<CategorySelected>((event, emit) {
      emit(state.copyWith(selectedLabel: event.selectedLabel));
    });

    on<LocationUpdated>((event, emit) {
      emit(
        state.copyWith(userLocation: event.location, cityName: event.cityName),
      );
    });
    on<SearchEvant>((event, emit) {
      final query = event.search.toLowerCase();
      final results = AppText.itemList.where((item) {
        final title = item['title'].toString().toLowerCase();
        return title.contains(query);
      }).toList();

      emit(state.copyWith(filteredItems: results));
    });
  }
}
