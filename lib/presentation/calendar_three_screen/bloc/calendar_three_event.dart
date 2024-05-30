part of 'calendar_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CalendarThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CalendarThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CalendarThree widget is first created.
class CalendarThreeInitialEvent extends CalendarThreeEvent {
  @override
  List<Object?> get props => [];
}
