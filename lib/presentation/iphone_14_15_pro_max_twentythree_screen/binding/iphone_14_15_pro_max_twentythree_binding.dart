import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twentythree_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentythreeScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentythreeController is created when the
/// Iphone1415ProMaxTwentythreeScreen is first loaded.
class Iphone1415ProMaxTwentythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentythreeController());
  }
}
