import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_eighteen_model.dart';
part 'iphone_14_15_pro_max_eighteen_event.dart';
part 'iphone_14_15_pro_max_eighteen_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxEighteen according to the event that is dispatched to it.
class Iphone1415ProMaxEighteenBloc
    extends Bloc<Iphone1415ProMaxEighteenEvent, Iphone1415ProMaxEighteenState> {
  Iphone1415ProMaxEighteenBloc(Iphone1415ProMaxEighteenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxEighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxEighteenInitialEvent event,
    Emitter<Iphone1415ProMaxEighteenState> emit,
  ) async {}
}
