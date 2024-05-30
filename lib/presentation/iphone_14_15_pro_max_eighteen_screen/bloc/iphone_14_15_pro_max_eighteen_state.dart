part of 'iphone_14_15_pro_max_eighteen_bloc.dart';

/// Represents the state of Iphone1415ProMaxEighteen in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxEighteenState extends Equatable {
  Iphone1415ProMaxEighteenState({this.iphone1415ProMaxEighteenModelObj});

  Iphone1415ProMaxEighteenModel? iphone1415ProMaxEighteenModelObj;

  @override
  List<Object?> get props => [iphone1415ProMaxEighteenModelObj];
  Iphone1415ProMaxEighteenState copyWith(
      {Iphone1415ProMaxEighteenModel? iphone1415ProMaxEighteenModelObj}) {
    return Iphone1415ProMaxEighteenState(
      iphone1415ProMaxEighteenModelObj: iphone1415ProMaxEighteenModelObj ??
          this.iphone1415ProMaxEighteenModelObj,
    );
  }
}
