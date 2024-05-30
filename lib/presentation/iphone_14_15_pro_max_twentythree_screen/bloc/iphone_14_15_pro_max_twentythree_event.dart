part of 'iphone_14_15_pro_max_twentythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1415ProMaxTwentythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Iphone1415ProMaxTwentythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Iphone1415ProMaxTwentythree widget is first created.
class Iphone1415ProMaxTwentythreeInitialEvent
    extends Iphone1415ProMaxTwentythreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button

// ignore_for_file: must_be_immutable
class ChangeRadioButtonEvent extends Iphone1415ProMaxTwentythreeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [value];
}
