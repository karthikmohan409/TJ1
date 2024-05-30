import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/calendar_two_model.dart';
part 'calendar_two_event.dart';
part 'calendar_two_state.dart';

/// A bloc that manages the state of a CalendarTwo according to the event that is dispatched to it.
class CalendarTwoBloc extends Bloc<CalendarTwoEvent, CalendarTwoState> {
  CalendarTwoBloc(CalendarTwoState initialState) : super(initialState) {
    on<CalendarTwoInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CalendarTwoState> emit,
  ) {
    emit(state.copyWith(
      saveCardCheckbox: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    CalendarTwoInitialEvent event,
    Emitter<CalendarTwoState> emit,
  ) async {
    emit(state.copyWith(
      cardNumberController: TextEditingController(),
      saveCardCheckbox: false,
    ));
    emit(state.copyWith(
        calendarTwoModelObj: state.calendarTwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
