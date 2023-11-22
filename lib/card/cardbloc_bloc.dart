import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cardbloc_event.dart';
part 'cardbloc_state.dart';

class CardblocBloc extends Bloc<CardblocEvent, CardblocState> {
  CardblocBloc() : super(CardblocInitial()) {
    on<CardblocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
