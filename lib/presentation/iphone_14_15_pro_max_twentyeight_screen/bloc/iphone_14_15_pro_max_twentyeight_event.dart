part of 'iphone_14_15_pro_max_twentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1415ProMaxTwentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Iphone1415ProMaxTwentyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Iphone1415ProMaxTwentyeight widget is first created.
class Iphone1415ProMaxTwentyeightInitialEvent
    extends Iphone1415ProMaxTwentyeightEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends Iphone1415ProMaxTwentyeightEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
