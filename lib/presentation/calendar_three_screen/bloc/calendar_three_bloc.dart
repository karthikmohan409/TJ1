import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/calendar_three_model.dart';
part 'calendar_three_event.dart';
part 'calendar_three_state.dart';

/// A bloc that manages the state of a CalendarThree according to the event that is dispatched to it.
class CalendarThreeBloc extends Bloc<CalendarThreeEvent, CalendarThreeState> {
  CalendarThreeBloc(CalendarThreeState initialState) : super(initialState) {
    on<CalendarThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalendarThreeInitialEvent event,
    Emitter<CalendarThreeState> emit,
  ) async {}
}
