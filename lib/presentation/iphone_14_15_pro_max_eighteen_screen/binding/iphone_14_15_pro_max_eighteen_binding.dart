import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_eighteen_controller.dart';

/// A binding class for the Iphone1415ProMaxEighteenScreen.
///
/// This class ensures that the Iphone1415ProMaxEighteenController is created when the
/// Iphone1415ProMaxEighteenScreen is first loaded.
class Iphone1415ProMaxEighteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxEighteenController());
  }
}
