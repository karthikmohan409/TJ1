part of 'iphone_14_15_pro_max_twenty_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwenty in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyState extends Equatable {
  Iphone1415ProMaxTwentyState(
      {this.passwordController,
      this.newpasswordController,
      this.newpassword1Controller,
      this.iphone1415ProMaxTwentyModelObj});

  TextEditingController? passwordController;

  TextEditingController? newpasswordController;

  TextEditingController? newpassword1Controller;

  Iphone1415ProMaxTwentyModel? iphone1415ProMaxTwentyModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        newpasswordController,
        newpassword1Controller,
        iphone1415ProMaxTwentyModelObj
      ];
  Iphone1415ProMaxTwentyState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newpasswordController,
    TextEditingController? newpassword1Controller,
    Iphone1415ProMaxTwentyModel? iphone1415ProMaxTwentyModelObj,
  }) {
    return Iphone1415ProMaxTwentyState(
      passwordController: passwordController ?? this.passwordController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpassword1Controller:
          newpassword1Controller ?? this.newpassword1Controller,
      iphone1415ProMaxTwentyModelObj:
          iphone1415ProMaxTwentyModelObj ?? this.iphone1415ProMaxTwentyModelObj,
    );
  }
}
