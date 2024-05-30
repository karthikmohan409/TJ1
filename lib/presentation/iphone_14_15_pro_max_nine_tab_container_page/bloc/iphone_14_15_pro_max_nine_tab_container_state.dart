part of 'iphone_14_15_pro_max_nine_tab_container_bloc.dart';

/// Represents the state of Iphone1415ProMaxNineTabContainer in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxNineTabContainerState extends Equatable {
  Iphone1415ProMaxNineTabContainerState(
      {this.iphone1415ProMaxNineTabContainerModelObj});

  Iphone1415ProMaxNineTabContainerModel?
      iphone1415ProMaxNineTabContainerModelObj;

  @override
  List<Object?> get props => [iphone1415ProMaxNineTabContainerModelObj];
  Iphone1415ProMaxNineTabContainerState copyWith(
      {Iphone1415ProMaxNineTabContainerModel?
          iphone1415ProMaxNineTabContainerModelObj}) {
    return Iphone1415ProMaxNineTabContainerState(
      iphone1415ProMaxNineTabContainerModelObj:
          iphone1415ProMaxNineTabContainerModelObj ??
              this.iphone1415ProMaxNineTabContainerModelObj,
    );
  }
}
