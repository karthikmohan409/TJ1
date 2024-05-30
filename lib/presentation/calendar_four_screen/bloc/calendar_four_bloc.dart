import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/calendar_four_model.dart';
part 'calendar_four_event.dart';
part 'calendar_four_state.dart';

/// A bloc that manages the state of a CalendarFour according to the event that is dispatched to it.
class CalendarFourBloc extends Bloc<CalendarFourEvent, CalendarFourState> {
  CalendarFourBloc(CalendarFourState initialState) : super(initialState) {
    on<CalendarFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalendarFourInitialEvent event,
    Emitter<CalendarFourState> emit,
  ) async {}
}
