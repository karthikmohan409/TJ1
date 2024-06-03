import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/calendar_one_model.dart';

/// A controller class for the CalendarOneScreen.
///
/// This class manages the state of the CalendarOneScreen, including the
/// current calendarOneModelObj
class CalendarOneController extends GetxController {
  TextEditingController cardtypeoneController = TextEditingController();

  TextEditingController paymentapponeController = TextEditingController();

  Rx<CalendarOneModel> calendarOneModelObj = CalendarOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardtypeoneController.dispose();
    paymentapponeController.dispose();
  }
}
