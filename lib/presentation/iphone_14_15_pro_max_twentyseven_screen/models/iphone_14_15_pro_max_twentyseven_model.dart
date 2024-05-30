import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_twentyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentysevenModel extends Equatable {
  Iphone1415ProMaxTwentysevenModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  Iphone1415ProMaxTwentysevenModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return Iphone1415ProMaxTwentysevenModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
