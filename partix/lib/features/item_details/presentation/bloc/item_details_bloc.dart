import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/features/item_details/presentation/bloc/item_details_event.dart';
import 'package:partix/features/item_details/presentation/bloc/item_details_state.dart';

class ItemDetailsBloc extends Bloc<ItemDetailsEvent, ItemDetailsState> {
  ItemDetailsBloc() : super(const ItemDetailsState()) {
    on<LoadItemDetails>((event, emit) {
      final item = AppText.itemList.firstWhere(
        (element) => element['id'] == event.itemId,
        orElse: () => <String, dynamic>{},
      );

      emit(ItemDetailsState(item: item));
    });
  }
}
