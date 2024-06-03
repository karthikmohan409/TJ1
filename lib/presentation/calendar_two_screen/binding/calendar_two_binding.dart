import '../../../core/app_export.dart';
import '../controller/calendar_two_controller.dart';

/// A binding class for the CalendarTwoScreen.
///
/// This class ensures that the CalendarTwoController is created when the
/// CalendarTwoScreen is first loaded.
class CalendarTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarTwoController());
  }
}
