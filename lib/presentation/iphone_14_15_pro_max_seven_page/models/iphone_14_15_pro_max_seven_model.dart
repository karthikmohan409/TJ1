import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';
import 'viewhierarchylist_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_seven_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSevenModel extends Equatable {
  Iphone1415ProMaxSevenModel(
      {this.userprofilelistItemList = const [],
      this.viewhierarchylistItemList = const []});

  List<UserprofilelistItemModel> userprofilelistItemList;

  List<ViewhierarchylistItemModel> viewhierarchylistItemList;

  Iphone1415ProMaxSevenModel copyWith({
    List<UserprofilelistItemModel>? userprofilelistItemList,
    List<ViewhierarchylistItemModel>? viewhierarchylistItemList,
  }) {
    return Iphone1415ProMaxSevenModel(
      userprofilelistItemList:
          userprofilelistItemList ?? this.userprofilelistItemList,
      viewhierarchylistItemList:
          viewhierarchylistItemList ?? this.viewhierarchylistItemList,
    );
  }

  @override
  List<Object?> get props =>
      [userprofilelistItemList, viewhierarchylistItemList];
}
