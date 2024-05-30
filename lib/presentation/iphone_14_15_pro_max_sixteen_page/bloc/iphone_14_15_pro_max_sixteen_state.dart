part of 'iphone_14_15_pro_max_sixteen_bloc.dart';

/// Represents the state of Iphone1415ProMaxSixteen in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixteenState extends Equatable {
  Iphone1415ProMaxSixteenState(
      {this.selectedDatesFromCalendar, this.iphone1415ProMaxSixteenModelObj});

  Iphone1415ProMaxSixteenModel? iphone1415ProMaxSixteenModelObj;

  DateTime? selectedDatesFromCalendar;

  @override
  List<Object?> get props =>
      [selectedDatesFromCalendar, iphone1415ProMaxSixteenModelObj];
  Iphone1415ProMaxSixteenState copyWith({
    DateTime? selectedDatesFromCalendar,
    Iphone1415ProMaxSixteenModel? iphone1415ProMaxSixteenModelObj,
  }) {
    return Iphone1415ProMaxSixteenState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      iphone1415ProMaxSixteenModelObj: iphone1415ProMaxSixteenModelObj ??
          this.iphone1415ProMaxSixteenModelObj,
    );
  }
}
