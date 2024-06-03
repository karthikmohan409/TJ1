import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/calendar_two_model.dart';

/// A controller class for the CalendarTwoScreen.
///
/// This class manages the state of the CalendarTwoScreen, including the
/// current calendarTwoModelObj
class CalendarTwoController extends GetxController {
  TextEditingController cardNumberController = TextEditingController();

  Rx<CalendarTwoModel> calendarTwoModelObj = CalendarTwoModel().obs;

  Rx<bool> saveCardCheckbox = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    cardNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in calendarTwoModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    calendarTwoModelObj.value.dropdownItemList.refresh();
  }
}
