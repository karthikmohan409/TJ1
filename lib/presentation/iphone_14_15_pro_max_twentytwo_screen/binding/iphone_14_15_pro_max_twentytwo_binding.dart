import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twentytwo_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentytwoScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentytwoController is created when the
/// Iphone1415ProMaxTwentytwoScreen is first loaded.
class Iphone1415ProMaxTwentytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentytwoController());
  }
}
