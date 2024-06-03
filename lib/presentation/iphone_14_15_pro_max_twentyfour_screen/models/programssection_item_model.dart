import '../../../core/app_export.dart';

/// This class is used in the [programssection_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProgramssectionItemModel {
  ProgramssectionItemModel({this.groupBy, this.id}) {
    groupBy = groupBy ?? Rx("");
    id = id ?? Rx("");
  }

  Rx<String>? groupBy;

  Rx<String>? id;
}
