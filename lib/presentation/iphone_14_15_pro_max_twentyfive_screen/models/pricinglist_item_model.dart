import '../../../core/app_export.dart';

/// This class is used in the [pricinglist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PricinglistItemModel {
  PricinglistItemModel(
      {this.monthlyPriceTex, this.priceAmountText, this.hstWeekText, this.id}) {
    monthlyPriceTex = monthlyPriceTex ?? Rx("2 Days in a week (Monthly price)");
    priceAmountText = priceAmountText ?? Rx("\$360");
    hstWeekText = hstWeekText ?? Rx("+HST Week");
    id = id ?? Rx("");
  }

  Rx<String>? monthlyPriceTex;

  Rx<String>? priceAmountText;

  Rx<String>? hstWeekText;

  Rx<String>? id;
}
