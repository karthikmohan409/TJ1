part of 'iphone_14_15_pro_max_three_bloc.dart';

/// Represents the state of Iphone1415ProMaxThree in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThreeState extends Equatable {
  Iphone1415ProMaxThreeState(
      {this.sliderIndex = 0, this.iphone1415ProMaxThreeModelObj});

  Iphone1415ProMaxThreeModel? iphone1415ProMaxThreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, iphone1415ProMaxThreeModelObj];
  Iphone1415ProMaxThreeState copyWith({
    int? sliderIndex,
    Iphone1415ProMaxThreeModel? iphone1415ProMaxThreeModelObj,
  }) {
    return Iphone1415ProMaxThreeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone1415ProMaxThreeModelObj:
          iphone1415ProMaxThreeModelObj ?? this.iphone1415ProMaxThreeModelObj,
    );
  }
}
