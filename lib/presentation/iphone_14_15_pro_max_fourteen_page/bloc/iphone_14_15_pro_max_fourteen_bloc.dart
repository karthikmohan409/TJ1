import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_fourteen_model.dart';
part 'iphone_14_15_pro_max_fourteen_event.dart';
part 'iphone_14_15_pro_max_fourteen_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxFourteen according to the event that is dispatched to it.
class Iphone1415ProMaxFourteenBloc
    extends Bloc<Iphone1415ProMaxFourteenEvent, Iphone1415ProMaxFourteenState> {
  Iphone1415ProMaxFourteenBloc(Iphone1415ProMaxFourteenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxFourteenInitialEvent event,
    Emitter<Iphone1415ProMaxFourteenState> emit,
  ) async {}
}
