import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/features/card/presentation/bloc/card_event.dart';
import 'package:partix/features/card/presentation/bloc/card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(CardInitial()) {
    on<CardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
