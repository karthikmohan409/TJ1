part of 'iphone_14_15_pro_max_twentyfive_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwentyfive in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfiveState extends Equatable {
  Iphone1415ProMaxTwentyfiveState({this.iphone1415ProMaxTwentyfiveModelObj});

  Iphone1415ProMaxTwentyfiveModel? iphone1415ProMaxTwentyfiveModelObj;

  @override
  List<Object?> get props => [iphone1415ProMaxTwentyfiveModelObj];
  Iphone1415ProMaxTwentyfiveState copyWith(
      {Iphone1415ProMaxTwentyfiveModel? iphone1415ProMaxTwentyfiveModelObj}) {
    return Iphone1415ProMaxTwentyfiveState(
      iphone1415ProMaxTwentyfiveModelObj: iphone1415ProMaxTwentyfiveModelObj ??
          this.iphone1415ProMaxTwentyfiveModelObj,
    );
  }
}
