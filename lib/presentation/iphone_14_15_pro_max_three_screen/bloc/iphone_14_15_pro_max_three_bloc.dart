import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/imageslider1_item_model.dart';
import '../models/iphone_14_15_pro_max_three_model.dart';
part 'iphone_14_15_pro_max_three_event.dart';
part 'iphone_14_15_pro_max_three_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxThree according to the event that is dispatched to it.
class Iphone1415ProMaxThreeBloc
    extends Bloc<Iphone1415ProMaxThreeEvent, Iphone1415ProMaxThreeState> {
  Iphone1415ProMaxThreeBloc(Iphone1415ProMaxThreeState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxThreeInitialEvent>(_onInitialize);
  }

  List<Imageslider1ItemModel> fillImageslider1ItemList() {
    return List.generate(1, (index) => Imageslider1ItemModel());
  }

  _onInitialize(
    Iphone1415ProMaxThreeInitialEvent event,
    Emitter<Iphone1415ProMaxThreeState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone1415ProMaxThreeModelObj:
            state.iphone1415ProMaxThreeModelObj?.copyWith(
      imageslider1ItemList: fillImageslider1ItemList(),
    )));
  }
}
