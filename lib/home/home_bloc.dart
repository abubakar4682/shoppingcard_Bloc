import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductCardListButtonEvent>(homeProductCardListButtonEvent);
    on<HomeProductWishListButtonEvent>(homeProductWishListButtonEvent);
    // on<HomeEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
  }

  FutureOr<void> homeProductCardListButtonEvent(HomeProductCardListButtonEvent event, Emitter<HomeState> emit) {
    print('wishlist clicked');
    emit(HomeNavigateToCardListPageActionSate());
  }

  FutureOr<void> homeProductWishListButtonEvent(HomeProductWishListButtonEvent event, Emitter<HomeState> emit) {
    print(' clicked');
  }
}
