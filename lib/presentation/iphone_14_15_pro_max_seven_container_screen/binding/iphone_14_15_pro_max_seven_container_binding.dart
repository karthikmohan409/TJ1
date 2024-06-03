import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_seven_container_controller.dart';

/// A binding class for the Iphone1415ProMaxSevenContainerScreen.
///
/// This class ensures that the Iphone1415ProMaxSevenContainerController is created when the
/// Iphone1415ProMaxSevenContainerScreen is first loaded.
class Iphone1415ProMaxSevenContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxSevenContainerController());
  }
}
