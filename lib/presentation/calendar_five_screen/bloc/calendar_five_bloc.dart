import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/calendar_five_model.dart';
part 'calendar_five_event.dart';
part 'calendar_five_state.dart';

/// A bloc that manages the state of a CalendarFive according to the event that is dispatched to it.
class CalendarFiveBloc extends Bloc<CalendarFiveEvent, CalendarFiveState> {
  CalendarFiveBloc(CalendarFiveState initialState) : super(initialState) {
    on<CalendarFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalendarFiveInitialEvent event,
    Emitter<CalendarFiveState> emit,
  ) async {}
}
