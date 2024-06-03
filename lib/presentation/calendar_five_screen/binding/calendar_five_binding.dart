import '../../../core/app_export.dart';
import '../controller/calendar_five_controller.dart';

/// A binding class for the CalendarFiveScreen.
///
/// This class ensures that the CalendarFiveController is created when the
/// CalendarFiveScreen is first loaded.
class CalendarFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarFiveController());
  }
}
