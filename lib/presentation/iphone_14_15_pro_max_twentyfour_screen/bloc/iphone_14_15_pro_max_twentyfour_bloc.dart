import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentyfour_model.dart';
import '../models/programssection_item_model.dart';
part 'iphone_14_15_pro_max_twentyfour_event.dart';
part 'iphone_14_15_pro_max_twentyfour_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwentyfour according to the event that is dispatched to it.
class Iphone1415ProMaxTwentyfourBloc extends Bloc<
    Iphone1415ProMaxTwentyfourEvent, Iphone1415ProMaxTwentyfourState> {
  Iphone1415ProMaxTwentyfourBloc(Iphone1415ProMaxTwentyfourState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxTwentyfourInitialEvent event,
    Emitter<Iphone1415ProMaxTwentyfourState> emit,
  ) async {
    emit(state.copyWith(
        iphone1415ProMaxTwentyfourModelObj:
            state.iphone1415ProMaxTwentyfourModelObj?.copyWith(
      programssectionItemList: fillProgramssectionItemList(),
    )));
  }

  List<ProgramssectionItemModel> fillProgramssectionItemList() {
    return [
      ProgramssectionItemModel(groupBy: "Badminton"),
      ProgramssectionItemModel(groupBy: "Badminton"),
      ProgramssectionItemModel(groupBy: "Badminton\r+\rTaekwondo")
    ];
  }
}
