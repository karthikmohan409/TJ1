import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_nine_tab_container_model.dart';

/// A controller class for the Iphone1415ProMaxNineTabContainerPage.
///
/// This class manages the state of the Iphone1415ProMaxNineTabContainerPage, including the
/// current iphone1415ProMaxNineTabContainerModelObj
class Iphone1415ProMaxNineTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Iphone1415ProMaxNineTabContainerController(
      this.iphone1415ProMaxNineTabContainerModelObj);

  Rx<Iphone1415ProMaxNineTabContainerModel>
      iphone1415ProMaxNineTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
