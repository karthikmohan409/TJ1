import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_five_model.dart';

/// A controller class for the Iphone1415ProMaxFiveScreen.
///
/// This class manages the state of the Iphone1415ProMaxFiveScreen, including the
/// current iphone1415ProMaxFiveModelObj
class Iphone1415ProMaxFiveController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<Iphone1415ProMaxFiveModel> iphone1415ProMaxFiveModelObj =
      Iphone1415ProMaxFiveModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }
}
