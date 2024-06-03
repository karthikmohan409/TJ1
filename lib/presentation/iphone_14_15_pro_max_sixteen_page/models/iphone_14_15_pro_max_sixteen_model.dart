import '../../../core/app_export.dart';
import 'bookingslist_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_sixteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixteenModel {
  Rx<List<BookingslistItemModel>> bookingslistItemList = Rx([
    BookingslistItemModel(
        musicImage: ImageConstant.imgMusic.obs,
        badmintonCourtT: "Badminton | Court 1".obs,
        priceText: "\$30".obs,
        timeText: "08:00 am - 09:00 am".obs,
        durationText: "1hr".obs,
        dateText: "21-Mar-2024".obs),
    BookingslistItemModel(
        musicImage: ImageConstant.imgMusic.obs,
        badmintonCourtT: "Badminton | Court 2".obs,
        priceText: "\$30".obs,
        timeText: "010:00 am - 11:00 am".obs,
        durationText: "1hr".obs,
        dateText: "18-Mar-2024".obs),
    BookingslistItemModel(
        musicImage: ImageConstant.imgCut.obs,
        badmintonCourtT: "Table tennis | Court 1".obs,
        priceText: "\$60".obs,
        timeText: "03:00 pm - 05:00 pm".obs,
        durationText: "2hr".obs,
        dateText: "15-Mar-2024".obs)
  ]);
}
