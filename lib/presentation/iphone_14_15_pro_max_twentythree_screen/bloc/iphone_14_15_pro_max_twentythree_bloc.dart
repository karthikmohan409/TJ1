import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentythree_model.dart';
part 'iphone_14_15_pro_max_twentythree_event.dart';
part 'iphone_14_15_pro_max_twentythree_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwentythree according to the event that is dispatched to it.
class Iphone1415ProMaxTwentythreeBloc extends Bloc<
    Iphone1415ProMaxTwentythreeEvent, Iphone1415ProMaxTwentythreeState> {
  Iphone1415ProMaxTwentythreeBloc(Iphone1415ProMaxTwentythreeState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentythreeInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<Iphone1415ProMaxTwentythreeState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    Iphone1415ProMaxTwentythreeInitialEvent event,
    Emitter<Iphone1415ProMaxTwentythreeState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
  }
}
