import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_seventeen_controller.dart';

/// A binding class for the Iphone1415ProMaxSeventeenScreen.
///
/// This class ensures that the Iphone1415ProMaxSeventeenController is created when the
/// Iphone1415ProMaxSeventeenScreen is first loaded.
class Iphone1415ProMaxSeventeenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProMaxSeventeenController());
  }
}
