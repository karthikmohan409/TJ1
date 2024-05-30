part of 'iphone_14_15_pro_max_two_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwo in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwoState extends Equatable {
  Iphone1415ProMaxTwoState(
      {this.sliderIndex = 0, this.iphone1415ProMaxTwoModelObj});

  Iphone1415ProMaxTwoModel? iphone1415ProMaxTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, iphone1415ProMaxTwoModelObj];
  Iphone1415ProMaxTwoState copyWith({
    int? sliderIndex,
    Iphone1415ProMaxTwoModel? iphone1415ProMaxTwoModelObj,
  }) {
    return Iphone1415ProMaxTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone1415ProMaxTwoModelObj:
          iphone1415ProMaxTwoModelObj ?? this.iphone1415ProMaxTwoModelObj,
    );
  }
}
