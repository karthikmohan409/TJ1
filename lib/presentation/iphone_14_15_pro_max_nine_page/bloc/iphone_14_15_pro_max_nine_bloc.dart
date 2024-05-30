import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_nine_model.dart';
part 'iphone_14_15_pro_max_nine_event.dart';
part 'iphone_14_15_pro_max_nine_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxNine according to the event that is dispatched to it.
class Iphone1415ProMaxNineBloc
    extends Bloc<Iphone1415ProMaxNineEvent, Iphone1415ProMaxNineState> {
  Iphone1415ProMaxNineBloc(Iphone1415ProMaxNineState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxNineInitialEvent event,
    Emitter<Iphone1415ProMaxNineState> emit,
  ) async {}
}
