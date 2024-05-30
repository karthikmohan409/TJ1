part of 'calendar_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CalendarTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CalendarTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CalendarTwo widget is first created.
class CalendarTwoInitialEvent extends CalendarTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends CalendarTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
