import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';
import 'viewhierarchylist_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_seven_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSevenModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        userImage: ImageConstant.imgRectangle9.obs, sportName: "Badminton".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgRectangle9113x233.obs,
        sportName: "Table tennis".obs)
  ]);

  Rx<List<ViewhierarchylistItemModel>> viewhierarchylistItemList = Rx([
    ViewhierarchylistItemModel(
        image1: ImageConstant.imgRectangle10.obs,
        image2: ImageConstant.imgRectangle9188x233.obs,
        text1: "Badminton".obs),
    ViewhierarchylistItemModel(
        image1: ImageConstant.imgRectangle1075x233.obs,
        image2: ImageConstant.imgRectangle91.obs,
        text1: "Badminton + Taekwondo".obs)
  ]);
}
