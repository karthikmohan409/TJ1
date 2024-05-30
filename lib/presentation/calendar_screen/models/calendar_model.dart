import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [calendar_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CalendarModel extends Equatable {
  CalendarModel(
      {this.selectedTime,
      this.time = "08:00 am",
      this.selectedTime1,
      this.time1 = "11:00 am"}) {
    selectedTime = selectedTime ?? TimeOfDay.now();
    selectedTime1 = selectedTime1 ?? TimeOfDay.now();
  }

  TimeOfDay? selectedTime;

  String time;

  TimeOfDay? selectedTime1;

  String time1;

  CalendarModel copyWith({
    TimeOfDay? selectedTime,
    String? time,
    TimeOfDay? selectedTime1,
    String? time1,
  }) {
    return CalendarModel(
      selectedTime: selectedTime ?? this.selectedTime,
      time: time ?? this.time,
      selectedTime1: selectedTime1 ?? this.selectedTime1,
      time1: time1 ?? this.time1,
    );
  }

  @override
  List<Object?> get props => [selectedTime, time, selectedTime1, time1];
}
