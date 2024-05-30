part of 'iphone_14_15_pro_max_twentyone_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwentyone in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyoneState extends Equatable {
  Iphone1415ProMaxTwentyoneState({this.iphone1415ProMaxTwentyoneModelObj});

  Iphone1415ProMaxTwentyoneModel? iphone1415ProMaxTwentyoneModelObj;

  @override
  List<Object?> get props => [iphone1415ProMaxTwentyoneModelObj];
  Iphone1415ProMaxTwentyoneState copyWith(
      {Iphone1415ProMaxTwentyoneModel? iphone1415ProMaxTwentyoneModelObj}) {
    return Iphone1415ProMaxTwentyoneState(
      iphone1415ProMaxTwentyoneModelObj: iphone1415ProMaxTwentyoneModelObj ??
          this.iphone1415ProMaxTwentyoneModelObj,
    );
  }
}
