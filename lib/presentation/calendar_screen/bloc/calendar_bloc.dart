import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/calendar_model.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

/// A bloc that manages the state of a Calendar according to the event that is dispatched to it.
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc(CalendarState initialState) : super(initialState) {
    on<CalendarInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeTimeEvent>(_changeTime);
    on<ChangeTimeEvent1>(_changeTime1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<CalendarState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    CalendarInitialEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }

  _changeTime(
    ChangeTimeEvent event,
    Emitter<CalendarState> emit,
  ) {
    emit(state.copyWith(
        calendarModelObj: state.calendarModelObj?.copyWith(
      time: event.time,
    )));
  }

  _changeTime1(
    ChangeTimeEvent1 event,
    Emitter<CalendarState> emit,
  ) {
    emit(state.copyWith(
        calendarModelObj: state.calendarModelObj?.copyWith(
      time1: event.time,
    )));
  }
}
