import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twenty_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentyScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentyController is created when the
/// Iphone1415ProMaxTwentyScreen is first loaded.
class Iphone1415ProMaxTwentyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentyController());
  }
}
