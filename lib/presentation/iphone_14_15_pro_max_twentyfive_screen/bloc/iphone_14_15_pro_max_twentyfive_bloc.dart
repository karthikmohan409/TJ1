import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_twentyfive_model.dart';
import '../models/pricinglist_item_model.dart';
part 'iphone_14_15_pro_max_twentyfive_event.dart';
part 'iphone_14_15_pro_max_twentyfive_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwentyfive according to the event that is dispatched to it.
class Iphone1415ProMaxTwentyfiveBloc extends Bloc<
    Iphone1415ProMaxTwentyfiveEvent, Iphone1415ProMaxTwentyfiveState> {
  Iphone1415ProMaxTwentyfiveBloc(Iphone1415ProMaxTwentyfiveState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwentyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxTwentyfiveInitialEvent event,
    Emitter<Iphone1415ProMaxTwentyfiveState> emit,
  ) async {
    emit(state.copyWith(
        iphone1415ProMaxTwentyfiveModelObj:
            state.iphone1415ProMaxTwentyfiveModelObj?.copyWith(
      pricinglistItemList: fillPricinglistItemList(),
    )));
  }

  List<PricinglistItemModel> fillPricinglistItemList() {
    return [
      PricinglistItemModel(
          monthlyPriceTex: "2 Days in a week (Monthly price)",
          priceAmountText: "\$360",
          hstWeekText: "+HST Week"),
      PricinglistItemModel(
          monthlyPriceTex: "3 Days in a week (Monthly Price)",
          priceAmountText: "\$450",
          hstWeekText: "+HST Week"),
      PricinglistItemModel(
          monthlyPriceTex: "Full week (Monthly Price)",
          priceAmountText: "\$590",
          hstWeekText: "+HST Week")
    ];
  }
}
