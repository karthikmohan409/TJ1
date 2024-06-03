import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twentyone_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentyoneScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentyoneController is created when the
/// Iphone1415ProMaxTwentyoneScreen is first loaded.
class Iphone1415ProMaxTwentyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentyoneController());
  }
}
