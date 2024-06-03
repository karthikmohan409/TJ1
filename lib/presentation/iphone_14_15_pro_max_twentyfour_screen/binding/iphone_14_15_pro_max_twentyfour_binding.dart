import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twentyfour_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentyfourScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentyfourController is created when the
/// Iphone1415ProMaxTwentyfourScreen is first loaded.
class Iphone1415ProMaxTwentyfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentyfourController());
  }
}
