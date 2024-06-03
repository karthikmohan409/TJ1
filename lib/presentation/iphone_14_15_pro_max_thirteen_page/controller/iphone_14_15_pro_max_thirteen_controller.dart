import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_thirteen_model.dart';

/// A controller class for the Iphone1415ProMaxThirteenPage.
///
/// This class manages the state of the Iphone1415ProMaxThirteenPage, including the
/// current iphone1415ProMaxThirteenModelObj
class Iphone1415ProMaxThirteenController extends GetxController {
  Iphone1415ProMaxThirteenController(this.iphone1415ProMaxThirteenModelObj);

  Rx<Iphone1415ProMaxThirteenModel> iphone1415ProMaxThirteenModelObj;

  Rx<DateTime> selectedDatesFromCalendar = DateTime.now().obs;
}
