import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_fifteen_model.dart';

/// A controller class for the Iphone1415ProMaxFifteenPage.
///
/// This class manages the state of the Iphone1415ProMaxFifteenPage, including the
/// current iphone1415ProMaxFifteenModelObj
class Iphone1415ProMaxFifteenController extends GetxController {
  Iphone1415ProMaxFifteenController(this.iphone1415ProMaxFifteenModelObj);

  Rx<Iphone1415ProMaxFifteenModel> iphone1415ProMaxFifteenModelObj;

  Rx<DateTime> selectedDatesFromCalendar = DateTime.now().obs;
}
