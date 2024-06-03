import '../../../core/app_export.dart';
import '../controller/calendar_three_controller.dart';

/// A binding class for the CalendarThreeScreen.
///
/// This class ensures that the CalendarThreeController is created when the
/// CalendarThreeScreen is first loaded.
class CalendarThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarThreeController());
  }
}
