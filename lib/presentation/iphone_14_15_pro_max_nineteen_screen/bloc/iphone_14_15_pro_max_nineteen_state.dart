part of 'iphone_14_15_pro_max_nineteen_bloc.dart';

/// Represents the state of Iphone1415ProMaxNineteen in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxNineteenState extends Equatable {
  Iphone1415ProMaxNineteenState(
      {this.johndoevalueController, this.iphone1415ProMaxNineteenModelObj});

  TextEditingController? johndoevalueController;

  Iphone1415ProMaxNineteenModel? iphone1415ProMaxNineteenModelObj;

  @override
  List<Object?> get props =>
      [johndoevalueController, iphone1415ProMaxNineteenModelObj];
  Iphone1415ProMaxNineteenState copyWith({
    TextEditingController? johndoevalueController,
    Iphone1415ProMaxNineteenModel? iphone1415ProMaxNineteenModelObj,
  }) {
    return Iphone1415ProMaxNineteenState(
      johndoevalueController:
          johndoevalueController ?? this.johndoevalueController,
      iphone1415ProMaxNineteenModelObj: iphone1415ProMaxNineteenModelObj ??
          this.iphone1415ProMaxNineteenModelObj,
    );
  }
}
