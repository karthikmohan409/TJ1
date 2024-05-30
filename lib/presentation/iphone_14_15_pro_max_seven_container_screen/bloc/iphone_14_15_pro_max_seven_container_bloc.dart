import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_seven_container_model.dart';
part 'iphone_14_15_pro_max_seven_container_event.dart';
part 'iphone_14_15_pro_max_seven_container_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxSevenContainer according to the event that is dispatched to it.
class Iphone1415ProMaxSevenContainerBloc extends Bloc<
    Iphone1415ProMaxSevenContainerEvent, Iphone1415ProMaxSevenContainerState> {
  Iphone1415ProMaxSevenContainerBloc(
      Iphone1415ProMaxSevenContainerState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxSevenContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxSevenContainerInitialEvent event,
    Emitter<Iphone1415ProMaxSevenContainerState> emit,
  ) async {}
}
