import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/bookingdetails_item_model.dart';
import '../models/iphone_14_15_pro_max_seventeen_model.dart';
part 'iphone_14_15_pro_max_seventeen_event.dart';
part 'iphone_14_15_pro_max_seventeen_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxSeventeen according to the event that is dispatched to it.
class Iphone1415ProMaxSeventeenBloc extends Bloc<Iphone1415ProMaxSeventeenEvent,
    Iphone1415ProMaxSeventeenState> {
  Iphone1415ProMaxSeventeenBloc(Iphone1415ProMaxSeventeenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxSeventeenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxSeventeenInitialEvent event,
    Emitter<Iphone1415ProMaxSeventeenState> emit,
  ) async {
    emit(state.copyWith(
        iphone1415ProMaxSeventeenModelObj:
            state.iphone1415ProMaxSeventeenModelObj?.copyWith(
      bookingdetailsItemList: fillBookingdetailsItemList(),
    )));
  }

  List<BookingdetailsItemModel> fillBookingdetailsItemList() {
    return [
      BookingdetailsItemModel(
          tableName: "Table tennis | Court 1",
          tablePrice: "\$30",
          timeSlot: "10:00 am - 11:00 am",
          duration: "1hr",
          date: "21-Mar-2024"),
      BookingdetailsItemModel(
          tableName: "Table tennis | Court 1",
          tablePrice: "\$60",
          timeSlot: "03:00 pm - 05:00 pm",
          duration: "2hr",
          date: "17-Mar-2024")
    ];
  }
}
