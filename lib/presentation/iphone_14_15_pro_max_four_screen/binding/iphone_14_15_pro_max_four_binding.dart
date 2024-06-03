import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_four_controller.dart';

/// A binding class for the Iphone1415ProMaxFourScreen.
///
/// This class ensures that the Iphone1415ProMaxFourController is created when the
/// Iphone1415ProMaxFourScreen is first loaded.
class Iphone1415ProMaxFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxFourController());
  }
}
