part of 'iphone_14_15_pro_max_fourteen_bloc.dart';

/// Represents the state of Iphone1415ProMaxFourteen in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFourteenState extends Equatable {
  Iphone1415ProMaxFourteenState(
      {this.selectedDatesFromCalendar, this.iphone1415ProMaxFourteenModelObj});

  Iphone1415ProMaxFourteenModel? iphone1415ProMaxFourteenModelObj;

  DateTime? selectedDatesFromCalendar;

  @override
  List<Object?> get props =>
      [selectedDatesFromCalendar, iphone1415ProMaxFourteenModelObj];
  Iphone1415ProMaxFourteenState copyWith({
    DateTime? selectedDatesFromCalendar,
    Iphone1415ProMaxFourteenModel? iphone1415ProMaxFourteenModelObj,
  }) {
    return Iphone1415ProMaxFourteenState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      iphone1415ProMaxFourteenModelObj: iphone1415ProMaxFourteenModelObj ??
          this.iphone1415ProMaxFourteenModelObj,
    );
  }
}
