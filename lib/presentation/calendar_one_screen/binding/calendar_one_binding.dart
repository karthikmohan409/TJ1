import '../../../core/app_export.dart';
import '../controller/calendar_one_controller.dart';

/// A binding class for the CalendarOneScreen.
///
/// This class ensures that the CalendarOneController is created when the
/// CalendarOneScreen is first loaded.
class CalendarOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarOneController());
  }
}
