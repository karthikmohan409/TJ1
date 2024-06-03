import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twentysix_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentysixScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentysixController is created when the
/// Iphone1415ProMaxTwentysixScreen is first loaded.
class Iphone1415ProMaxTwentysixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentysixController());
  }
}
