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
    musicImage = musicImage ?? ImageConstant.imgMusic;
    badmintonCourtT = badmintonCourtT ?? "Badminton | Court 1";
    priceText = priceText ?? "\$30";
    timeText = timeText ?? "08:00 am - 09:00 am";
    durationText = durationText ?? "1hr";
    dateText = dateText ?? "21-Mar-2024";
    id = id ?? "";
  }

  String? musicImage;

  String? badmintonCourtT;

  String? priceText;

  String? timeText;

  String? durationText;

  String? dateText;

  String? id;
}
