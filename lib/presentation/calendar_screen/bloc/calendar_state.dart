part of 'calendar_bloc.dart';

/// Represents the state of Calendar in the application.

// ignore_for_file: must_be_immutable
class CalendarState extends Equatable {
  CalendarState({this.isSelectedSwitch = false, this.calendarModelObj});

  CalendarModel? calendarModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [isSelectedSwitch, calendarModelObj];
  CalendarState copyWith({
    bool? isSelectedSwitch,
    CalendarModel? calendarModelObj,
  }) {
    return CalendarState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      calendarModelObj: calendarModelObj ?? this.calendarModelObj,
    );
  }
}
