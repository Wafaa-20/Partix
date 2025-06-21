import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:partix/features/favorites/presentation/bloc/favorites_event.dart';
import 'package:partix/features/favorites/presentation/bloc/favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesInitial()) {
    on<FavoritesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
