import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../../core/app_export.dart';
import '../models/calendar_five_model.dart';

/// A controller class for the CalendarFiveScreen.
///
/// This class manages the state of the CalendarFiveScreen, including the
/// current calendarFiveModelObj
class CalendarFiveController extends GetxController {
  Rx<CalendarFiveModel> calendarFiveModelObj = CalendarFiveModel().obs;

  Rx<List<DateTime?>> selectedDatesFromCalendar = Rx([]);
}
