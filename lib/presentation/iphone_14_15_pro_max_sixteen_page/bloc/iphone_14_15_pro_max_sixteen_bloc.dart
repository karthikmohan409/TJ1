import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/bookingslist_item_model.dart';
import '../models/iphone_14_15_pro_max_sixteen_model.dart';
part 'iphone_14_15_pro_max_sixteen_event.dart';
part 'iphone_14_15_pro_max_sixteen_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxSixteen according to the event that is dispatched to it.
class Iphone1415ProMaxSixteenBloc
    extends Bloc<Iphone1415ProMaxSixteenEvent, Iphone1415ProMaxSixteenState> {
  Iphone1415ProMaxSixteenBloc(Iphone1415ProMaxSixteenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxSixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxSixteenInitialEvent event,
    Emitter<Iphone1415ProMaxSixteenState> emit,
  ) async {
    emit(state.copyWith(
        iphone1415ProMaxSixteenModelObj:
            state.iphone1415ProMaxSixteenModelObj?.copyWith(
      bookingslistItemList: fillBookingslistItemList(),
    )));
  }

  List<BookingslistItemModel> fillBookingslistItemList() {
    return [
      BookingslistItemModel(
          musicImage: ImageConstant.imgMusic,
          badmintonCourtT: "Badminton | Court 1",
          priceText: "\$30",
          timeText: "08:00 am - 09:00 am",
          durationText: "1hr",
          dateText: "21-Mar-2024"),
      BookingslistItemModel(
          musicImage: ImageConstant.imgMusic,
          badmintonCourtT: "Badminton | Court 2",
          priceText: "\$30",
          timeText: "010:00 am - 11:00 am",
          durationText: "1hr",
          dateText: "18-Mar-2024"),
      BookingslistItemModel(
          musicImage: ImageConstant.imgCut,
          badmintonCourtT: "Table tennis | Court 1",
          priceText: "\$60",
          timeText: "03:00 pm - 05:00 pm",
          durationText: "2hr",
          dateText: "15-Mar-2024")
    ];
  }
}
