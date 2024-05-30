part of 'calendar_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CalendarFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CalendarFiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CalendarFive widget is first created.
class CalendarFiveInitialEvent extends CalendarFiveEvent {
  @override
  List<Object?> get props => [];
}
