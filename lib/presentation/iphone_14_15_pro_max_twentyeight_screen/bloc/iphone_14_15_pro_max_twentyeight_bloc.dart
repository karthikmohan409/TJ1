import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentyeight_model.dart';
part 'iphone_14_15_pro_max_twentyeight_event.dart';
part 'iphone_14_15_pro_max_twentyeight_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwentyeight according to the event that is dispatched to it.
class Iphone1415ProMaxTwentyeightBloc extends Bloc<
    Iphone1415ProMaxTwentyeightEvent, Iphone1415ProMaxTwentyeightState> {
  Iphone1415ProMaxTwentyeightBloc(Iphone1415ProMaxTwentyeightState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentyeightInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<Iphone1415ProMaxTwentyeightState> emit,
  ) {
    emit(state.copyWith(
      privacyPolicyAgreement: event.value,
    ));
  }

  _onInitialize(
    Iphone1415ProMaxTwentyeightInitialEvent event,
    Emitter<Iphone1415ProMaxTwentyeightState> emit,
  ) async {
    emit(state.copyWith(
      privacyPolicyAgreement: false,
    ));
  }
}
