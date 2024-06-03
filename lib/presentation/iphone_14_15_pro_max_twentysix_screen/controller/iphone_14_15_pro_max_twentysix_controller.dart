import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentysix_model.dart';

/// A controller class for the Iphone1415ProMaxTwentysixScreen.
///
/// This class manages the state of the Iphone1415ProMaxTwentysixScreen, including the
/// current iphone1415ProMaxTwentysixModelObj
class Iphone1415ProMaxTwentysixController extends GetxController {
  TextEditingController namevalueoneController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<Iphone1415ProMaxTwentysixModel> iphone1415ProMaxTwentysixModelObj =
      Iphone1415ProMaxTwentysixModel().obs;

  @override
  void onClose() {
    super.onClose();
    namevalueoneController.dispose();
    phoneNumberController.dispose();
  }
}
