/// This class is used in the [programssection_item_widget] screen.

// ignore_for_file: must_be_immutable
class ProgramssectionItemModel {
  ProgramssectionItemModel({this.groupBy, this.id}) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
