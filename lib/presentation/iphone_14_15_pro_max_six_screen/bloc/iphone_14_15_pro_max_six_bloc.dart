import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_six_model.dart';
part 'iphone_14_15_pro_max_six_event.dart';
part 'iphone_14_15_pro_max_six_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxSix according to the event that is dispatched to it.
class Iphone1415ProMaxSixBloc
    extends Bloc<Iphone1415ProMaxSixEvent, Iphone1415ProMaxSixState> {
  Iphone1415ProMaxSixBloc(Iphone1415ProMaxSixState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxSixInitialEvent event,
    Emitter<Iphone1415ProMaxSixState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      emailController: TextEditingController(),
      enterFlatApartmController: TextEditingController(),
      nameController: TextEditingController(),
      cityController: TextEditingController(),
      enterstateproviController: TextEditingController(),
    ));
  }
}
