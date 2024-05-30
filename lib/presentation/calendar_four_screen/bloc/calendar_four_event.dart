part of 'calendar_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CalendarFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CalendarFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CalendarFour widget is first created.
class CalendarFourInitialEvent extends CalendarFourEvent {
  @override
  List<Object?> get props => [];
}
