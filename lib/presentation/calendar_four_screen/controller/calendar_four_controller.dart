import '../../../core/app_export.dart';
import '../models/calendar_four_model.dart';

/// A controller class for the CalendarFourScreen.
///
/// This class manages the state of the CalendarFourScreen, including the
/// current calendarFourModelObj
class CalendarFourController extends GetxController {
  Rx<CalendarFourModel> calendarFourModelObj = CalendarFourModel().obs;
}
