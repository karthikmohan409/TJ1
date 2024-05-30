part of 'calendar_two_bloc.dart';

/// Represents the state of CalendarTwo in the application.

// ignore_for_file: must_be_immutable
class CalendarTwoState extends Equatable {
  CalendarTwoState(
      {this.cardNumberController,
      this.selectedDropDownValue,
      this.saveCardCheckbox = false,
      this.calendarTwoModelObj});

  TextEditingController? cardNumberController;

  SelectionPopupModel? selectedDropDownValue;

  CalendarTwoModel? calendarTwoModelObj;

  bool saveCardCheckbox;

  @override
  List<Object?> get props => [
        cardNumberController,
        selectedDropDownValue,
        saveCardCheckbox,
        calendarTwoModelObj
      ];
  CalendarTwoState copyWith({
    TextEditingController? cardNumberController,
    SelectionPopupModel? selectedDropDownValue,
    bool? saveCardCheckbox,
    CalendarTwoModel? calendarTwoModelObj,
  }) {
    return CalendarTwoState(
      cardNumberController: cardNumberController ?? this.cardNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      saveCardCheckbox: saveCardCheckbox ?? this.saveCardCheckbox,
      calendarTwoModelObj: calendarTwoModelObj ?? this.calendarTwoModelObj,
    );
  }
}
