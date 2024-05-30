part of 'calendar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Calendar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CalendarEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Calendar widget is first created.
class CalendarInitialEvent extends CalendarEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing time

// ignore_for_file: must_be_immutable
class ChangeTimeEvent extends CalendarEvent {
  ChangeTimeEvent({required this.time});

  String time;

  @override
  List<Object?> get props => [time];
}

///Event for changing time

// ignore_for_file: must_be_immutable
class ChangeTimeEvent1 extends CalendarEvent {
  ChangeTimeEvent1({required this.time});

  String time;

  @override
  List<Object?> get props => [time];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitchEvent extends CalendarEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
