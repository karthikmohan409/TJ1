part of 'calendar_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CalendarOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CalendarOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CalendarOne widget is first created.
class CalendarOneInitialEvent extends CalendarOneEvent {
  @override
  List<Object?> get props => [];
}
