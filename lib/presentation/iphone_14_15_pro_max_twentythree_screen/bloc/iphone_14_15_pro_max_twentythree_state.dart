part of 'iphone_14_15_pro_max_twentythree_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwentythree in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentythreeState extends Equatable {
  Iphone1415ProMaxTwentythreeState(
      {this.radioGroup = "", this.iphone1415ProMaxTwentythreeModelObj});

  Iphone1415ProMaxTwentythreeModel? iphone1415ProMaxTwentythreeModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [radioGroup, iphone1415ProMaxTwentythreeModelObj];
  Iphone1415ProMaxTwentythreeState copyWith({
    String? radioGroup,
    Iphone1415ProMaxTwentythreeModel? iphone1415ProMaxTwentythreeModelObj,
  }) {
    return Iphone1415ProMaxTwentythreeState(
      radioGroup: radioGroup ?? this.radioGroup,
      iphone1415ProMaxTwentythreeModelObj:
          iphone1415ProMaxTwentythreeModelObj ??
              this.iphone1415ProMaxTwentythreeModelObj,
    );
  }
}
