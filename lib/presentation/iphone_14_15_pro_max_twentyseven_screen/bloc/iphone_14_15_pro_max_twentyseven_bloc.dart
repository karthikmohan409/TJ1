import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/iphone_14_15_pro_max_twentyseven_model.dart';
part 'iphone_14_15_pro_max_twentyseven_event.dart';
part 'iphone_14_15_pro_max_twentyseven_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwentyseven according to the event that is dispatched to it.
class Iphone1415ProMaxTwentysevenBloc extends Bloc<
    Iphone1415ProMaxTwentysevenEvent, Iphone1415ProMaxTwentysevenState> {
  Iphone1415ProMaxTwentysevenBloc(Iphone1415ProMaxTwentysevenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentysevenInitialEvent>(_onInitialize);
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
    Iphone1415ProMaxTwentysevenInitialEvent event,
    Emitter<Iphone1415ProMaxTwentysevenState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      emailController: TextEditingController(),
      enterFlatApartmController: TextEditingController(),
      nameController: TextEditingController(),
      cityController: TextEditingController(),
      enterstateproviController: TextEditingController(),
      zipcodeController: TextEditingController(),
      newpasswordController: TextEditingController(),
      newpassword1Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        iphone1415ProMaxTwentysevenModelObj:
            state.iphone1415ProMaxTwentysevenModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
