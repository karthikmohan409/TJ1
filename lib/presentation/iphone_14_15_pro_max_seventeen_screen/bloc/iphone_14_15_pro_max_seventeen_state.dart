part of 'iphone_14_15_pro_max_seventeen_bloc.dart';

/// Represents the state of Iphone1415ProMaxSeventeen in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSeventeenState extends Equatable {
  Iphone1415ProMaxSeventeenState(
      {this.selectedDatesFromCalendar, this.iphone1415ProMaxSeventeenModelObj});

  Iphone1415ProMaxSeventeenModel? iphone1415ProMaxSeventeenModelObj;

  DateTime? selectedDatesFromCalendar;

  @override
  List<Object?> get props =>
      [selectedDatesFromCalendar, iphone1415ProMaxSeventeenModelObj];
  Iphone1415ProMaxSeventeenState copyWith({
    DateTime? selectedDatesFromCalendar,
    Iphone1415ProMaxSeventeenModel? iphone1415ProMaxSeventeenModelObj,
  }) {
    return Iphone1415ProMaxSeventeenState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      iphone1415ProMaxSeventeenModelObj: iphone1415ProMaxSeventeenModelObj ??
          this.iphone1415ProMaxSeventeenModelObj,
    );
  }
}
