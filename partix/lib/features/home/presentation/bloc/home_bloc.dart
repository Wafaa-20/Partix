import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/service/supabase_connect.dart';
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
    on<AddToCart>((event, emit) {
      final itemId = event.id;
      final item = AppText.itemList.firstWhere(
        (element) => element['id'] == itemId,
        orElse: () => throw Exception('Item not found'),
      );

      final category = item['category'] as String;
      final price = item['price'] as double;
      final quantity = 1;
      SupabaseConnect.addToCart(
        itemId: itemId,
        category: category,
        price: price,
        quantity: quantity,
      );
      emit(AddToCartSucessfuly());
      emit(state.copyWith(filteredItems: AppText.itemList));
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
