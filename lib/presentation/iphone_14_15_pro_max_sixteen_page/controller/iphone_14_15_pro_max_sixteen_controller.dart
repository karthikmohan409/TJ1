import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_sixteen_model.dart';

/// A controller class for the Iphone1415ProMaxSixteenPage.
///
/// This class manages the state of the Iphone1415ProMaxSixteenPage, including the
/// current iphone1415ProMaxSixteenModelObj
class Iphone1415ProMaxSixteenController extends GetxController {
  Iphone1415ProMaxSixteenController(this.iphone1415ProMaxSixteenModelObj);

  Rx<Iphone1415ProMaxSixteenModel> iphone1415ProMaxSixteenModelObj;

  Rx<DateTime> selectedDatesFromCalendar = DateTime.now().obs;
}
