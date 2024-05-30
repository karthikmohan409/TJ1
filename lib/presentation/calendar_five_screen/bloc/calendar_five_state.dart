part of 'calendar_five_bloc.dart';

/// Represents the state of CalendarFive in the application.

// ignore_for_file: must_be_immutable
class CalendarFiveState extends Equatable {
  CalendarFiveState(
      {this.selectedDatesFromCalendar, this.calendarFiveModelObj});

  CalendarFiveModel? calendarFiveModelObj;

  List<DateTime?>? selectedDatesFromCalendar;

  @override
  List<Object?> get props => [selectedDatesFromCalendar, calendarFiveModelObj];
  CalendarFiveState copyWith({
    List<DateTime?>? selectedDatesFromCalendar,
    CalendarFiveModel? calendarFiveModelObj,
  }) {
    return CalendarFiveState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      calendarFiveModelObj: calendarFiveModelObj ?? this.calendarFiveModelObj,
    );
  }
}
