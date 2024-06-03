import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentytwo_model.dart';

/// A controller class for the Iphone1415ProMaxTwentytwoScreen.
///
/// This class manages the state of the Iphone1415ProMaxTwentytwoScreen, including the
/// current iphone1415ProMaxTwentytwoModelObj
class Iphone1415ProMaxTwentytwoController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<Iphone1415ProMaxTwentytwoModel> iphone1415ProMaxTwentytwoModelObj =
      Iphone1415ProMaxTwentytwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
