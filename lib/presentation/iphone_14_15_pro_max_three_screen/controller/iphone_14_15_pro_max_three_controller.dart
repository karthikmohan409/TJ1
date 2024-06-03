import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_three_model.dart';

/// A controller class for the Iphone1415ProMaxThreeScreen.
///
/// This class manages the state of the Iphone1415ProMaxThreeScreen, including the
/// current iphone1415ProMaxThreeModelObj
class Iphone1415ProMaxThreeController extends GetxController {
  Rx<Iphone1415ProMaxThreeModel> iphone1415ProMaxThreeModelObj =
      Iphone1415ProMaxThreeModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
