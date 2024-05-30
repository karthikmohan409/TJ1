part of 'calendar_four_bloc.dart';

/// Represents the state of CalendarFour in the application.

// ignore_for_file: must_be_immutable
class CalendarFourState extends Equatable {
  CalendarFourState({this.calendarFourModelObj});

  CalendarFourModel? calendarFourModelObj;

  @override
  List<Object?> get props => [calendarFourModelObj];
  CalendarFourState copyWith({CalendarFourModel? calendarFourModelObj}) {
    return CalendarFourState(
      calendarFourModelObj: calendarFourModelObj ?? this.calendarFourModelObj,
    );
  }
}
