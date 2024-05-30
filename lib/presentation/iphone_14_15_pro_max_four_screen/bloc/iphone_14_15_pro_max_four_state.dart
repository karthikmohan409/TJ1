part of 'iphone_14_15_pro_max_four_bloc.dart';

/// Represents the state of Iphone1415ProMaxFour in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFourState extends Equatable {
  Iphone1415ProMaxFourState(
      {this.sliderIndex = 0, this.iphone1415ProMaxFourModelObj});

  Iphone1415ProMaxFourModel? iphone1415ProMaxFourModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, iphone1415ProMaxFourModelObj];
  Iphone1415ProMaxFourState copyWith({
    int? sliderIndex,
    Iphone1415ProMaxFourModel? iphone1415ProMaxFourModelObj,
  }) {
    return Iphone1415ProMaxFourState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone1415ProMaxFourModelObj:
          iphone1415ProMaxFourModelObj ?? this.iphone1415ProMaxFourModelObj,
    );
  }
}
