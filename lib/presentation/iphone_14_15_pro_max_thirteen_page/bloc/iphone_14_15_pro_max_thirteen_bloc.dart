import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_thirteen_model.dart';
part 'iphone_14_15_pro_max_thirteen_event.dart';
part 'iphone_14_15_pro_max_thirteen_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxThirteen according to the event that is dispatched to it.
class Iphone1415ProMaxThirteenBloc
    extends Bloc<Iphone1415ProMaxThirteenEvent, Iphone1415ProMaxThirteenState> {
  Iphone1415ProMaxThirteenBloc(Iphone1415ProMaxThirteenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxThirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxThirteenInitialEvent event,
    Emitter<Iphone1415ProMaxThirteenState> emit,
  ) async {}
}
