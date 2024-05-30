import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_fifteen_model.dart';
part 'iphone_14_15_pro_max_fifteen_event.dart';
part 'iphone_14_15_pro_max_fifteen_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxFifteen according to the event that is dispatched to it.
class Iphone1415ProMaxFifteenBloc
    extends Bloc<Iphone1415ProMaxFifteenEvent, Iphone1415ProMaxFifteenState> {
  Iphone1415ProMaxFifteenBloc(Iphone1415ProMaxFifteenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxFifteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxFifteenInitialEvent event,
    Emitter<Iphone1415ProMaxFifteenState> emit,
  ) async {}
}
