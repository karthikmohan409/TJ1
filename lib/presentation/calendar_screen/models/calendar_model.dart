import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [calendar_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CalendarModel {
  Rx<TimeOfDay>? selectedTime = Rx(TimeOfDay.now());

  Rx<String> time = Rx("08:00 am");

  Rx<TimeOfDay>? selectedTime1 = Rx(TimeOfDay.now());

  Rx<String> time1 = Rx("11:00 am");
}
