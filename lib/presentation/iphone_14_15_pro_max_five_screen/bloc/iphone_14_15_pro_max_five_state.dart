part of 'iphone_14_15_pro_max_five_bloc.dart';

/// Represents the state of Iphone1415ProMaxFive in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFiveState extends Equatable {
  Iphone1415ProMaxFiveState(
      {this.phoneNumberController,
      this.passwordController,
      this.isShowPassword = true,
      this.rememberMe = false,
      this.iphone1415ProMaxFiveModelObj});

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  Iphone1415ProMaxFiveModel? iphone1415ProMaxFiveModelObj;

  bool isShowPassword;

  bool rememberMe;

  @override
  List<Object?> get props => [
        phoneNumberController,
        passwordController,
        isShowPassword,
        rememberMe,
        iphone1415ProMaxFiveModelObj
      ];
  Iphone1415ProMaxFiveState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberMe,
    Iphone1415ProMaxFiveModel? iphone1415ProMaxFiveModelObj,
  }) {
    return Iphone1415ProMaxFiveState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberMe: rememberMe ?? this.rememberMe,
      iphone1415ProMaxFiveModelObj:
          iphone1415ProMaxFiveModelObj ?? this.iphone1415ProMaxFiveModelObj,
    );
  }
}
