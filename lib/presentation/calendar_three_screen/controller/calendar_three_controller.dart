import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../../core/app_export.dart';
import '../models/calendar_three_model.dart';

/// A controller class for the CalendarThreeScreen.
///
/// This class manages the state of the CalendarThreeScreen, including the
/// current calendarThreeModelObj
class CalendarThreeController extends GetxController {
  Rx<CalendarThreeModel> calendarThreeModelObj = CalendarThreeModel().obs;

  Rx<List<DateTime?>> selectedDatesFromCalendar = Rx([]);
}
