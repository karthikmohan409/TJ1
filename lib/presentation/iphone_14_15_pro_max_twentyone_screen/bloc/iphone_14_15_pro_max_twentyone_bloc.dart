import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentyone_model.dart';
part 'iphone_14_15_pro_max_twentyone_event.dart';
part 'iphone_14_15_pro_max_twentyone_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwentyone according to the event that is dispatched to it.
class Iphone1415ProMaxTwentyoneBloc extends Bloc<Iphone1415ProMaxTwentyoneEvent,
    Iphone1415ProMaxTwentyoneState> {
  Iphone1415ProMaxTwentyoneBloc(Iphone1415ProMaxTwentyoneState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxTwentyoneInitialEvent event,
    Emitter<Iphone1415ProMaxTwentyoneState> emit,
  ) async {}
}
