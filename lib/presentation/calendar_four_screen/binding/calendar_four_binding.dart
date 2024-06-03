import '../../../core/app_export.dart';
import '../controller/calendar_four_controller.dart';

/// A binding class for the CalendarFourScreen.
///
/// This class ensures that the CalendarFourController is created when the
/// CalendarFourScreen is first loaded.
class CalendarFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarFourController());
  }
}
