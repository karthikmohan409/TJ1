part of 'iphone_14_15_pro_max_seven_container_bloc.dart';

/// Represents the state of Iphone1415ProMaxSevenContainer in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSevenContainerState extends Equatable {
  Iphone1415ProMaxSevenContainerState(
      {this.iphone1415ProMaxSevenContainerModelObj});

  Iphone1415ProMaxSevenContainerModel? iphone1415ProMaxSevenContainerModelObj;

  @override
  List<Object?> get props => [iphone1415ProMaxSevenContainerModelObj];
  Iphone1415ProMaxSevenContainerState copyWith(
      {Iphone1415ProMaxSevenContainerModel?
          iphone1415ProMaxSevenContainerModelObj}) {
    return Iphone1415ProMaxSevenContainerState(
      iphone1415ProMaxSevenContainerModelObj:
          iphone1415ProMaxSevenContainerModelObj ??
              this.iphone1415ProMaxSevenContainerModelObj,
    );
  }
}
