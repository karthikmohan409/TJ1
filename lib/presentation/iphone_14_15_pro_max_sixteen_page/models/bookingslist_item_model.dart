import '../../../core/app_export.dart';

/// This class is used in the [bookingslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BookingslistItemModel {
  BookingslistItemModel(
      {this.musicImage,
      this.badmintonCourtT,
      this.priceText,
      this.timeText,
      this.durationText,
      this.dateText,
      this.id}) {
    musicImage = musicImage ?? Rx(ImageConstant.imgMusic);
    badmintonCourtT = badmintonCourtT ?? Rx("Badminton | Court 1");
    priceText = priceText ?? Rx("\$30");
    timeText = timeText ?? Rx("08:00 am - 09:00 am");
    durationText = durationText ?? Rx("1hr");
    dateText = dateText ?? Rx("21-Mar-2024");
    id = id ?? Rx("");
  }

  Rx<String>? musicImage;

  Rx<String>? badmintonCourtT;

  Rx<String>? priceText;

  Rx<String>? timeText;

  Rx<String>? durationText;

  Rx<String>? dateText;

  Rx<String>? id;
}
