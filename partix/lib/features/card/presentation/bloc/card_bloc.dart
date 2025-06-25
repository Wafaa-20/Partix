import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/service/supabase_connect.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/features/card/presentation/bloc/card_event.dart';
import 'package:partix/features/card/presentation/bloc/card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  int count = 1;

  List<Map<String, dynamic>> cartIds = [];
  List<Map<String, dynamic>> items = [];
  double total = 0;

  CardBloc() : super(ItemState(count: 1)) {
    on<IncreaseItem>(increaseItem);
    on<DecreaseItem>(decreaseItem);
    on<LoadCartItems>(getitems);
  }

  FutureOr<void> getitems(LoadCartItems event, Emitter<CardState> emit) async {
    cartIds = await SupabaseConnect.getCartItems();
    items = getItemsByIds(cartIds);

    emit(CartItemsState(items: items));
  }

  FutureOr<void> increaseItem(IncreaseItem event, Emitter<CardState> emit) {
    count++;
    for (var element in items) {
      total += element['price'];
    }

    emit(ItemState(count: count, total: total));
  }

  FutureOr<void> decreaseItem(DecreaseItem event, Emitter<CardState> emit) {
    if (count > 2) {
      count--;
      emit(ItemState(count: count));
    }
  }
}

List<Map<String, dynamic>> getItemsByIds(List<Map<String, dynamic>> ids) {
  return ids
      .map((entry) {
        final itemDetails = AppText.itemList.firstWhere(
          (item) => item['id'] == entry['item_id'],
          orElse: () => {},
        );

        return {
          'cart_id': entry['id'],
          'item_id': entry['item_id'],
          'all_details': itemDetails,
        };
      })
      .where((item) => item['all_details'].isNotEmpty)
      .toList();
}
