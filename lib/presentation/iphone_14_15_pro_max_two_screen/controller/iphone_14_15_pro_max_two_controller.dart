import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_two_model.dart';

/// A controller class for the Iphone1415ProMaxTwoScreen.
///
/// This class manages the state of the Iphone1415ProMaxTwoScreen, including the
/// current iphone1415ProMaxTwoModelObj
class Iphone1415ProMaxTwoController extends GetxController {
  Rx<Iphone1415ProMaxTwoModel> iphone1415ProMaxTwoModelObj =
      Iphone1415ProMaxTwoModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
