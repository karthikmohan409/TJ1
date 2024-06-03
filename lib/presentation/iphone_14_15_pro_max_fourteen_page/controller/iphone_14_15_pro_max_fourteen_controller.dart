import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_fourteen_model.dart';

/// A controller class for the Iphone1415ProMaxFourteenPage.
///
/// This class manages the state of the Iphone1415ProMaxFourteenPage, including the
/// current iphone1415ProMaxFourteenModelObj
class Iphone1415ProMaxFourteenController extends GetxController {
  Iphone1415ProMaxFourteenController(this.iphone1415ProMaxFourteenModelObj);

  Rx<Iphone1415ProMaxFourteenModel> iphone1415ProMaxFourteenModelObj;

  Rx<DateTime> selectedDatesFromCalendar = DateTime.now().obs;
}
