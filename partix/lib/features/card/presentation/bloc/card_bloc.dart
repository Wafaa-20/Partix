import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/features/card/presentation/bloc/card_event.dart';
import 'package:partix/features/card/presentation/bloc/card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  int count = 1;
  CardBloc() : super(ItemState(count: 1)) {
    on<IncreaseItem>(increaseItem);
    on<DecreaseItem>(decreaseItem);
  }

  FutureOr<void> increaseItem(IncreaseItem event, Emitter<CardState> emit) {
    emit(ItemState(count: count));
  }

  FutureOr<void> decreaseItem(DecreaseItem event, Emitter<CardState> emit) {
    if (count > 1) {
      count--;
      emit(ItemState(count: count));
    }
  }
}
