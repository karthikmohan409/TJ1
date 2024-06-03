import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_nineteen_model.dart';

/// A controller class for the Iphone1415ProMaxNineteenScreen.
///
/// This class manages the state of the Iphone1415ProMaxNineteenScreen, including the
/// current iphone1415ProMaxNineteenModelObj
class Iphone1415ProMaxNineteenController extends GetxController {
  TextEditingController johndoevalueController = TextEditingController();

  Rx<Iphone1415ProMaxNineteenModel> iphone1415ProMaxNineteenModelObj =
      Iphone1415ProMaxNineteenModel().obs;

  @override
  void onClose() {
    super.onClose();
    johndoevalueController.dispose();
  }
}
