import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'programssection_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_twentyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfourModel extends Equatable {
  Iphone1415ProMaxTwentyfourModel({this.programssectionItemList = const []});

  List<ProgramssectionItemModel> programssectionItemList;

  Iphone1415ProMaxTwentyfourModel copyWith(
      {List<ProgramssectionItemModel>? programssectionItemList}) {
    return Iphone1415ProMaxTwentyfourModel(
      programssectionItemList:
          programssectionItemList ?? this.programssectionItemList,
    );
  }

  @override
  List<Object?> get props => [programssectionItemList];
}
