import '../../../core/app_export.dart';

/// This class is used in the [bookingdetails_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BookingdetailsItemModel {
  BookingdetailsItemModel(
      {this.tableName,
      this.tablePrice,
      this.timeSlot,
      this.duration,
      this.date,
      this.id}) {
    tableName = tableName ?? Rx("Table tennis | Court 1");
    tablePrice = tablePrice ?? Rx("\$30");
    timeSlot = timeSlot ?? Rx("10:00 am - 11:00 am");
    duration = duration ?? Rx("1hr");
    date = date ?? Rx("21-Mar-2024");
    id = id ?? Rx("");
  }

  Rx<String>? tableName;

  Rx<String>? tablePrice;

  Rx<String>? timeSlot;

  Rx<String>? duration;

  Rx<String>? date;

  Rx<String>? id;
}
