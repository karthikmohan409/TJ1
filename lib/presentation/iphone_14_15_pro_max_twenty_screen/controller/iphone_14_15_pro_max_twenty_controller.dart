import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twenty_model.dart';

/// A controller class for the Iphone1415ProMaxTwentyScreen.
///
/// This class manages the state of the Iphone1415ProMaxTwentyScreen, including the
/// current iphone1415ProMaxTwentyModelObj
class Iphone1415ProMaxTwentyController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpassword1Controller = TextEditingController();

  Rx<Iphone1415ProMaxTwentyModel> iphone1415ProMaxTwentyModelObj =
      Iphone1415ProMaxTwentyModel().obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    newpasswordController.dispose();
    newpassword1Controller.dispose();
  }
}
