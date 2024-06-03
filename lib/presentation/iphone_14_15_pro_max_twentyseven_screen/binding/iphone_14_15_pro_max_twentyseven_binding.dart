import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_twentyseven_controller.dart';

/// A binding class for the Iphone1415ProMaxTwentysevenScreen.
///
/// This class ensures that the Iphone1415ProMaxTwentysevenController is created when the
/// Iphone1415ProMaxTwentysevenScreen is first loaded.
class Iphone1415ProMaxTwentysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxTwentysevenController());
  }
}
