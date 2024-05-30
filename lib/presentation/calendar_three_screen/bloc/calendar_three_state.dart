part of 'calendar_three_bloc.dart';

/// Represents the state of CalendarThree in the application.

// ignore_for_file: must_be_immutable
class CalendarThreeState extends Equatable {
  CalendarThreeState(
      {this.selectedDatesFromCalendar, this.calendarThreeModelObj});

  CalendarThreeModel? calendarThreeModelObj;

  List<DateTime?>? selectedDatesFromCalendar;

  @override
  List<Object?> get props => [selectedDatesFromCalendar, calendarThreeModelObj];
  CalendarThreeState copyWith({
    List<DateTime?>? selectedDatesFromCalendar,
    CalendarThreeModel? calendarThreeModelObj,
  }) {
    return CalendarThreeState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      calendarThreeModelObj:
          calendarThreeModelObj ?? this.calendarThreeModelObj,
    );
  }
}
