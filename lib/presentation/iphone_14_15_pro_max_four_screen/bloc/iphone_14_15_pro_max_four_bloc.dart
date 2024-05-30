import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/imageslider2_item_model.dart';
import '../models/iphone_14_15_pro_max_four_model.dart';
part 'iphone_14_15_pro_max_four_event.dart';
part 'iphone_14_15_pro_max_four_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxFour according to the event that is dispatched to it.
class Iphone1415ProMaxFourBloc
    extends Bloc<Iphone1415ProMaxFourEvent, Iphone1415ProMaxFourState> {
  Iphone1415ProMaxFourBloc(Iphone1415ProMaxFourState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxFourInitialEvent>(_onInitialize);
  }

  List<Imageslider2ItemModel> fillImageslider2ItemList() {
    return List.generate(1, (index) => Imageslider2ItemModel());
  }

  _onInitialize(
    Iphone1415ProMaxFourInitialEvent event,
    Emitter<Iphone1415ProMaxFourState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone1415ProMaxFourModelObj:
            state.iphone1415ProMaxFourModelObj?.copyWith(
      imageslider2ItemList: fillImageslider2ItemList(),
    )));
  }
}
