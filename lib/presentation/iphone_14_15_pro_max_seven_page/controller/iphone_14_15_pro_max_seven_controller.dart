import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_seven_model.dart';

/// A controller class for the Iphone1415ProMaxSevenPage.
///
/// This class manages the state of the Iphone1415ProMaxSevenPage, including the
/// current iphone1415ProMaxSevenModelObj
class Iphone1415ProMaxSevenController extends GetxController {
  Iphone1415ProMaxSevenController(this.iphone1415ProMaxSevenModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<Iphone1415ProMaxSevenModel> iphone1415ProMaxSevenModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
