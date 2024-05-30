import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentysix_model.dart';
part 'iphone_14_15_pro_max_twentysix_event.dart';
part 'iphone_14_15_pro_max_twentysix_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwentysix according to the event that is dispatched to it.
class Iphone1415ProMaxTwentysixBloc extends Bloc<Iphone1415ProMaxTwentysixEvent,
    Iphone1415ProMaxTwentysixState> {
  Iphone1415ProMaxTwentysixBloc(Iphone1415ProMaxTwentysixState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxTwentysixInitialEvent event,
    Emitter<Iphone1415ProMaxTwentysixState> emit,
  ) async {
    emit(state.copyWith(
      namevalueoneController: TextEditingController(),
      phoneNumberController: TextEditingController(),
    ));
  }
}
