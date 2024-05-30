part of 'iphone_14_15_pro_max_twentysix_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwentysix in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentysixState extends Equatable {
  Iphone1415ProMaxTwentysixState(
      {this.namevalueoneController,
      this.phoneNumberController,
      this.iphone1415ProMaxTwentysixModelObj});

  TextEditingController? namevalueoneController;

  TextEditingController? phoneNumberController;

  Iphone1415ProMaxTwentysixModel? iphone1415ProMaxTwentysixModelObj;

  @override
  List<Object?> get props => [
        namevalueoneController,
        phoneNumberController,
        iphone1415ProMaxTwentysixModelObj
      ];
  Iphone1415ProMaxTwentysixState copyWith({
    TextEditingController? namevalueoneController,
    TextEditingController? phoneNumberController,
    Iphone1415ProMaxTwentysixModel? iphone1415ProMaxTwentysixModelObj,
  }) {
    return Iphone1415ProMaxTwentysixState(
      namevalueoneController:
          namevalueoneController ?? this.namevalueoneController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      iphone1415ProMaxTwentysixModelObj: iphone1415ProMaxTwentysixModelObj ??
          this.iphone1415ProMaxTwentysixModelObj,
    );
  }
}
