import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [calendar_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CalendarTwoModel extends Equatable {
  CalendarTwoModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  CalendarTwoModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return CalendarTwoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
