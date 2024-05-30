import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentytwo_model.dart';
part 'iphone_14_15_pro_max_twentytwo_event.dart';
part 'iphone_14_15_pro_max_twentytwo_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwentytwo according to the event that is dispatched to it.
class Iphone1415ProMaxTwentytwoBloc extends Bloc<Iphone1415ProMaxTwentytwoEvent,
    Iphone1415ProMaxTwentytwoState> {
  Iphone1415ProMaxTwentytwoBloc(Iphone1415ProMaxTwentytwoState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxTwentytwoInitialEvent event,
    Emitter<Iphone1415ProMaxTwentytwoState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
