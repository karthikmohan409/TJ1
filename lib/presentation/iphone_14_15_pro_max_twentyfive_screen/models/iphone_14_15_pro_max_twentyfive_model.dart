import '../../../core/app_export.dart';
import 'pricinglist_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_twentyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfiveModel {
  Rx<List<PricinglistItemModel>> pricinglistItemList = Rx([
    PricinglistItemModel(
        monthlyPriceTex: "2 Days in a week (Monthly price)".obs,
        priceAmountText: "\$360".obs,
        hstWeekText: "+HST Week".obs),
    PricinglistItemModel(
        monthlyPriceTex: "3 Days in a week (Monthly Price)".obs,
        priceAmountText: "\$450".obs,
        hstWeekText: "+HST Week".obs),
    PricinglistItemModel(
        monthlyPriceTex: "Full week (Monthly Price)".obs,
        priceAmountText: "\$590".obs,
        hstWeekText: "+HST Week".obs)
  ]);
}
