part of 'iphone_14_15_pro_max_twentyfour_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwentyfour in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfourState extends Equatable {
  Iphone1415ProMaxTwentyfourState({this.iphone1415ProMaxTwentyfourModelObj});

  Iphone1415ProMaxTwentyfourModel? iphone1415ProMaxTwentyfourModelObj;

  @override
  List<Object?> get props => [iphone1415ProMaxTwentyfourModelObj];
  Iphone1415ProMaxTwentyfourState copyWith(
      {Iphone1415ProMaxTwentyfourModel? iphone1415ProMaxTwentyfourModelObj}) {
    return Iphone1415ProMaxTwentyfourState(
      iphone1415ProMaxTwentyfourModelObj: iphone1415ProMaxTwentyfourModelObj ??
          this.iphone1415ProMaxTwentyfourModelObj,
    );
  }
}
