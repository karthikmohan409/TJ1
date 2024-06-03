import '../../../core/app_export.dart';

/// This class is used in the [imageslider2_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Imageslider2ItemModel {
  Imageslider2ItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
