import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel({this.image1, this.image2, this.text1, this.id}) {
    image1 = image1 ?? Rx(ImageConstant.imgRectangle10);
    image2 = image2 ?? Rx(ImageConstant.imgRectangle9188x233);
    text1 = text1 ?? Rx("Badminton");
    id = id ?? Rx("");
  }

  Rx<String>? image1;

  Rx<String>? image2;

  Rx<String>? text1;

  Rx<String>? id;
}
