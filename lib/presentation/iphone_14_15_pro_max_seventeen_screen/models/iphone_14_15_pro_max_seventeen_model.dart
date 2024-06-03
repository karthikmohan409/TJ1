import '../../../core/app_export.dart';
import 'bookingdetails_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_seventeen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSeventeenModel {
  Rx<List<BookingdetailsItemModel>> bookingdetailsItemList = Rx([
    BookingdetailsItemModel(
        tableName: "Table tennis | Court 1".obs,
        tablePrice: "\$30".obs,
        timeSlot: "10:00 am - 11:00 am".obs,
        duration: "1hr".obs,
        date: "21-Mar-2024".obs),
    BookingdetailsItemModel(
        tableName: "Table tennis | Court 1".obs,
        tablePrice: "\$60".obs,
        timeSlot: "03:00 pm - 05:00 pm".obs,
        duration: "2hr".obs,
        date: "17-Mar-2024".obs)
  ]);
}
