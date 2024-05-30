import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_five_model.dart';
part 'iphone_14_15_pro_max_five_event.dart';
part 'iphone_14_15_pro_max_five_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxFive according to the event that is dispatched to it.
class Iphone1415ProMaxFiveBloc
    extends Bloc<Iphone1415ProMaxFiveEvent, Iphone1415ProMaxFiveState> {
  Iphone1415ProMaxFiveBloc(Iphone1415ProMaxFiveState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxFiveInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<Iphone1415ProMaxFiveState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<Iphone1415ProMaxFiveState> emit,
  ) {
    emit(state.copyWith(
      rememberMe: event.value,
    ));
  }

  _onInitialize(
    Iphone1415ProMaxFiveInitialEvent event,
    Emitter<Iphone1415ProMaxFiveState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: true,
      rememberMe: false,
    ));
  }
}
