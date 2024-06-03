import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twentyfive_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentyfiveScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentyfiveController is created when the
/// Iphone1415ProMaxTwentyfiveScreen is first loaded.
class Iphone1415ProMaxTwentyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentyfiveController());
  }
}
