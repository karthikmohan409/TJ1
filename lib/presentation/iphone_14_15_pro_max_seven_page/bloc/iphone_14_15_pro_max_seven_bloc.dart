import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_seven_model.dart';
import '../models/userprofilelist_item_model.dart';
import '../models/viewhierarchylist_item_model.dart';
part 'iphone_14_15_pro_max_seven_event.dart';
part 'iphone_14_15_pro_max_seven_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxSeven according to the event that is dispatched to it.
class Iphone1415ProMaxSevenBloc
    extends Bloc<Iphone1415ProMaxSevenEvent, Iphone1415ProMaxSevenState> {
  Iphone1415ProMaxSevenBloc(Iphone1415ProMaxSevenState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxSevenInitialEvent>(_onInitialize);
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          userImage: ImageConstant.imgRectangle9, sportName: "Badminton"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgRectangle9113x233,
          sportName: "Table tennis")
    ];
  }

  List<ViewhierarchylistItemModel> fillViewhierarchylistItemList() {
    return [
      ViewhierarchylistItemModel(
          image1: ImageConstant.imgRectangle10,
          image2: ImageConstant.imgRectangle9188x233,
          text1: "Badminton"),
      ViewhierarchylistItemModel(
          image1: ImageConstant.imgRectangle1075x233,
          image2: ImageConstant.imgRectangle91,
          text1: "Badminton + Taekwondo")
    ];
  }

  _onInitialize(
    Iphone1415ProMaxSevenInitialEvent event,
    Emitter<Iphone1415ProMaxSevenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        iphone1415ProMaxSevenModelObj:
            state.iphone1415ProMaxSevenModelObj?.copyWith(
      userprofilelistItemList: fillUserprofilelistItemList(),
      viewhierarchylistItemList: fillViewhierarchylistItemList(),
    )));
  }
}
