import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twentyeight_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentyeightScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentyeightController is created when the
/// Iphone1415ProMaxTwentyeightScreen is first loaded.
class Iphone1415ProMaxTwentyeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentyeightController());
  }
}
