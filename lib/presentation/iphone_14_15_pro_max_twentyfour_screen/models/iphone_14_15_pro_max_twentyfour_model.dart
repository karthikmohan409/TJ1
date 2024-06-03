import '../../../core/app_export.dart';
import 'programssection_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_twentyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfourModel {
  Rx<List<ProgramssectionItemModel>> programssectionItemList = Rx([
    ProgramssectionItemModel(groupBy: "Badminton".obs),
    ProgramssectionItemModel(groupBy: "Badminton".obs),
    ProgramssectionItemModel(groupBy: "Badminton\r+\rTaekwondo".obs)
  ]);
}
