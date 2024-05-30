import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_nineteen_model.dart';
part 'iphone_14_15_pro_max_nineteen_event.dart';
part 'iphone_14_15_pro_max_nineteen_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxNineteen according to the event that is dispatched to it.
class Iphone1415ProMaxNineteenBloc
    extends Bloc<Iphone1415ProMaxNineteenEvent, Iphone1415ProMaxNineteenState> {
  Iphone1415ProMaxNineteenBloc(Iphone1415ProMaxNineteenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxNineteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxNineteenInitialEvent event,
    Emitter<Iphone1415ProMaxNineteenState> emit,
  ) async {
    emit(state.copyWith(
      johndoevalueController: TextEditingController(),
    ));
  }
}
