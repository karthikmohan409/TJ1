import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_nineteen_controller.dart';

/// A binding class for the Iphone1415ProMaxNineteenScreen.
///
/// This class ensures that the Iphone1415ProMaxNineteenController is created when the
/// Iphone1415ProMaxNineteenScreen is first loaded.
class Iphone1415ProMaxNineteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxNineteenController());
  }
}
