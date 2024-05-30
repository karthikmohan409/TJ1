import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/imageslider_item_model.dart';
import '../models/iphone_14_15_pro_max_two_model.dart';
part 'iphone_14_15_pro_max_two_event.dart';
part 'iphone_14_15_pro_max_two_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwo according to the event that is dispatched to it.
class Iphone1415ProMaxTwoBloc
    extends Bloc<Iphone1415ProMaxTwoEvent, Iphone1415ProMaxTwoState> {
  Iphone1415ProMaxTwoBloc(Iphone1415ProMaxTwoState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwoInitialEvent>(_onInitialize);
  }

  List<ImagesliderItemModel> fillImagesliderItemList() {
    return List.generate(1, (index) => ImagesliderItemModel());
  }

  _onInitialize(
    Iphone1415ProMaxTwoInitialEvent event,
    Emitter<Iphone1415ProMaxTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone1415ProMaxTwoModelObj:
            state.iphone1415ProMaxTwoModelObj?.copyWith(
      imagesliderItemList: fillImagesliderItemList(),
    )));
  }
}
