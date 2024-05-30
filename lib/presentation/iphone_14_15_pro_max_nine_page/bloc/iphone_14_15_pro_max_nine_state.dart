part of 'iphone_14_15_pro_max_nine_bloc.dart';

/// Represents the state of Iphone1415ProMaxNine in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxNineState extends Equatable {
  Iphone1415ProMaxNineState(
      {this.selectedDatesFromCalendar, this.iphone1415ProMaxNineModelObj});

  Iphone1415ProMaxNineModel? iphone1415ProMaxNineModelObj;

  DateTime? selectedDatesFromCalendar;

  @override
  List<Object?> get props =>
      [selectedDatesFromCalendar, iphone1415ProMaxNineModelObj];
  Iphone1415ProMaxNineState copyWith({
    DateTime? selectedDatesFromCalendar,
    Iphone1415ProMaxNineModel? iphone1415ProMaxNineModelObj,
  }) {
    return Iphone1415ProMaxNineState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      iphone1415ProMaxNineModelObj:
          iphone1415ProMaxNineModelObj ?? this.iphone1415ProMaxNineModelObj,
    );
  }
}
