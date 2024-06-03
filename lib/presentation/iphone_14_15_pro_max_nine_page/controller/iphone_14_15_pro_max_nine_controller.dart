import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_nine_model.dart';

/// A controller class for the Iphone1415ProMaxNinePage.
///
/// This class manages the state of the Iphone1415ProMaxNinePage, including the
/// current iphone1415ProMaxNineModelObj
class Iphone1415ProMaxNineController extends GetxController {
  Iphone1415ProMaxNineController(this.iphone1415ProMaxNineModelObj);

  Rx<Iphone1415ProMaxNineModel> iphone1415ProMaxNineModelObj;

  Rx<DateTime> selectedDatesFromCalendar = DateTime.now().obs;
}
