part of 'iphone_14_15_pro_max_twentytwo_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwentytwo in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentytwoState extends Equatable {
  Iphone1415ProMaxTwentytwoState(
      {this.emailController, this.iphone1415ProMaxTwentytwoModelObj});

  TextEditingController? emailController;

  Iphone1415ProMaxTwentytwoModel? iphone1415ProMaxTwentytwoModelObj;

  @override
  List<Object?> get props =>
      [emailController, iphone1415ProMaxTwentytwoModelObj];
  Iphone1415ProMaxTwentytwoState copyWith({
    TextEditingController? emailController,
    Iphone1415ProMaxTwentytwoModel? iphone1415ProMaxTwentytwoModelObj,
  }) {
    return Iphone1415ProMaxTwentytwoState(
      emailController: emailController ?? this.emailController,
      iphone1415ProMaxTwentytwoModelObj: iphone1415ProMaxTwentytwoModelObj ??
          this.iphone1415ProMaxTwentytwoModelObj,
    );
  }
}
