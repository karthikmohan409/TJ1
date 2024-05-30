import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twenty_model.dart';
part 'iphone_14_15_pro_max_twenty_event.dart';
part 'iphone_14_15_pro_max_twenty_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwenty according to the event that is dispatched to it.
class Iphone1415ProMaxTwentyBloc
    extends Bloc<Iphone1415ProMaxTwentyEvent, Iphone1415ProMaxTwentyState> {
  Iphone1415ProMaxTwentyBloc(Iphone1415ProMaxTwentyState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxTwentyInitialEvent event,
    Emitter<Iphone1415ProMaxTwentyState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      newpasswordController: TextEditingController(),
      newpassword1Controller: TextEditingController(),
    ));
  }
}
