part of 'iphone_14_15_pro_max_eight_bloc.dart';

/// Represents the state of Iphone1415ProMaxEight in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxEightState extends Equatable {
  Iphone1415ProMaxEightState({this.iphone1415ProMaxEightModelObj});

  Iphone1415ProMaxEightModel? iphone1415ProMaxEightModelObj;

  @override
  List<Object?> get props => [iphone1415ProMaxEightModelObj];
  Iphone1415ProMaxEightState copyWith(
      {Iphone1415ProMaxEightModel? iphone1415ProMaxEightModelObj}) {
    return Iphone1415ProMaxEightState(
      iphone1415ProMaxEightModelObj:
          iphone1415ProMaxEightModelObj ?? this.iphone1415ProMaxEightModelObj,
    );
  }
}
