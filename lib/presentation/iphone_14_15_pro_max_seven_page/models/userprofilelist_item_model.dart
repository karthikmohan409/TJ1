import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilelistItemModel {
  UserprofilelistItemModel({this.userImage, this.sportName, this.id}) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle9);
    sportName = sportName ?? Rx("Badminton");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? sportName;

  Rx<String>? id;
}
