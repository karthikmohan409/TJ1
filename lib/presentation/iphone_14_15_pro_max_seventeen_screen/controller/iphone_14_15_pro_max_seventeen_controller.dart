import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_seventeen_model.dart';

/// A controller class for the Iphone1415ProMaxSeventeenScreen.
///
/// This class manages the state of the Iphone1415ProMaxSeventeenScreen, including the
/// current iphone1415ProMaxSeventeenModelObj
class Iphone1415ProMaxSeventeenController extends GetxController {
  Rx<Iphone1415ProMaxSeventeenModel> iphone1415ProMaxSeventeenModelObj =
      Iphone1415ProMaxSeventeenModel().obs;

  Rx<DateTime> selectedDatesFromCalendar = DateTime.now().obs;
}
