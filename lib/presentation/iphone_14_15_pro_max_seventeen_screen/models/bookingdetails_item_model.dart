/// This class is used in the [bookingdetails_item_widget] screen.

// ignore_for_file: must_be_immutable
class BookingdetailsItemModel {
  BookingdetailsItemModel(
      {this.tableName,
      this.tablePrice,
      this.timeSlot,
      this.duration,
      this.date,
      this.id}) {
    tableName = tableName ?? "Table tennis | Court 1";
    tablePrice = tablePrice ?? "\$30";
    timeSlot = timeSlot ?? "10:00 am - 11:00 am";
    duration = duration ?? "1hr";
    date = date ?? "21-Mar-2024";
    id = id ?? "";
  }

  String? tableName;

  String? tablePrice;

  String? timeSlot;

  String? duration;

  String? date;

  String? id;
}
