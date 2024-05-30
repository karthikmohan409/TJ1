import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_nine_tab_container_model.dart';
part 'iphone_14_15_pro_max_nine_tab_container_event.dart';
part 'iphone_14_15_pro_max_nine_tab_container_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxNineTabContainer according to the event that is dispatched to it.
class Iphone1415ProMaxNineTabContainerBloc extends Bloc<
    Iphone1415ProMaxNineTabContainerEvent,
    Iphone1415ProMaxNineTabContainerState> {
  Iphone1415ProMaxNineTabContainerBloc(
      Iphone1415ProMaxNineTabContainerState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxNineTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxNineTabContainerInitialEvent event,
    Emitter<Iphone1415ProMaxNineTabContainerState> emit,
  ) async {}
}
