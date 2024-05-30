part of 'iphone_14_15_pro_max_thirteen_bloc.dart';

/// Represents the state of Iphone1415ProMaxThirteen in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThirteenState extends Equatable {
  Iphone1415ProMaxThirteenState(
      {this.selectedDatesFromCalendar, this.iphone1415ProMaxThirteenModelObj});

  Iphone1415ProMaxThirteenModel? iphone1415ProMaxThirteenModelObj;

  DateTime? selectedDatesFromCalendar;

  @override
  List<Object?> get props =>
      [selectedDatesFromCalendar, iphone1415ProMaxThirteenModelObj];
  Iphone1415ProMaxThirteenState copyWith({
    DateTime? selectedDatesFromCalendar,
    Iphone1415ProMaxThirteenModel? iphone1415ProMaxThirteenModelObj,
  }) {
    return Iphone1415ProMaxThirteenState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      iphone1415ProMaxThirteenModelObj: iphone1415ProMaxThirteenModelObj ??
          this.iphone1415ProMaxThirteenModelObj,
    );
  }
}
