/// This class is used in the [pricinglist_item_widget] screen.

// ignore_for_file: must_be_immutable
class PricinglistItemModel {
  PricinglistItemModel(
      {this.monthlyPriceTex, this.priceAmountText, this.hstWeekText, this.id}) {
    monthlyPriceTex = monthlyPriceTex ?? "2 Days in a week (Monthly price)";
    priceAmountText = priceAmountText ?? "\$360";
    hstWeekText = hstWeekText ?? "+HST Week";
    id = id ?? "";
  }

  String? monthlyPriceTex;

  String? priceAmountText;

  String? hstWeekText;

  String? id;
}
