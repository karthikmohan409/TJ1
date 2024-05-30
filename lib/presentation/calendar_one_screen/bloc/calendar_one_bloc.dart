import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/calendar_one_model.dart';
part 'calendar_one_event.dart';
part 'calendar_one_state.dart';

/// A bloc that manages the state of a CalendarOne according to the event that is dispatched to it.
class CalendarOneBloc extends Bloc<CalendarOneEvent, CalendarOneState> {
  CalendarOneBloc(CalendarOneState initialState) : super(initialState) {
    on<CalendarOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalendarOneInitialEvent event,
    Emitter<CalendarOneState> emit,
  ) async {
    emit(state.copyWith(
      cardtypeoneController: TextEditingController(),
      paymentapponeController: TextEditingController(),
    ));
  }
}
