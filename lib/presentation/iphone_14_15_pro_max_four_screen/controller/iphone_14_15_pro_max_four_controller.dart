import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_four_model.dart';

/// A controller class for the Iphone1415ProMaxFourScreen.
///
/// This class manages the state of the Iphone1415ProMaxFourScreen, including the
/// current iphone1415ProMaxFourModelObj
class Iphone1415ProMaxFourController extends GetxController {
  Rx<Iphone1415ProMaxFourModel> iphone1415ProMaxFourModelObj =
      Iphone1415ProMaxFourModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
