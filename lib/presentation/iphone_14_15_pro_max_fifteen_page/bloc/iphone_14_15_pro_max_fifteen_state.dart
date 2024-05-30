part of 'iphone_14_15_pro_max_fifteen_bloc.dart';

/// Represents the state of Iphone1415ProMaxFifteen in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFifteenState extends Equatable {
  Iphone1415ProMaxFifteenState(
      {this.selectedDatesFromCalendar, this.iphone1415ProMaxFifteenModelObj});

  Iphone1415ProMaxFifteenModel? iphone1415ProMaxFifteenModelObj;

  DateTime? selectedDatesFromCalendar;

  @override
  List<Object?> get props =>
      [selectedDatesFromCalendar, iphone1415ProMaxFifteenModelObj];
  Iphone1415ProMaxFifteenState copyWith({
    DateTime? selectedDatesFromCalendar,
    Iphone1415ProMaxFifteenModel? iphone1415ProMaxFifteenModelObj,
  }) {
    return Iphone1415ProMaxFifteenState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      iphone1415ProMaxFifteenModelObj: iphone1415ProMaxFifteenModelObj ??
          this.iphone1415ProMaxFifteenModelObj,
    );
  }
}
