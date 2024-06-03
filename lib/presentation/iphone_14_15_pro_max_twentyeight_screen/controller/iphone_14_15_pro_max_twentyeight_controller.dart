import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentyeight_model.dart';

/// A controller class for the Iphone1415ProMaxTwentyeightScreen.
///
/// This class manages the state of the Iphone1415ProMaxTwentyeightScreen, including the
/// current iphone1415ProMaxTwentyeightModelObj
class Iphone1415ProMaxTwentyeightController extends GetxController {
  Rx<Iphone1415ProMaxTwentyeightModel> iphone1415ProMaxTwentyeightModelObj =
      Iphone1415ProMaxTwentyeightModel().obs;

  Rx<bool> privacyPolicyAgreement = false.obs;
}
