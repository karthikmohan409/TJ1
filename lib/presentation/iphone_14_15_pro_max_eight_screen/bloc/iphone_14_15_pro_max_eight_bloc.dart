import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_eight_model.dart';
part 'iphone_14_15_pro_max_eight_event.dart';
part 'iphone_14_15_pro_max_eight_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxEight according to the event that is dispatched to it.
class Iphone1415ProMaxEightBloc
    extends Bloc<Iphone1415ProMaxEightEvent, Iphone1415ProMaxEightState> {
  Iphone1415ProMaxEightBloc(Iphone1415ProMaxEightState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxEightInitialEvent event,
    Emitter<Iphone1415ProMaxEightState> emit,
  ) async {}
}
