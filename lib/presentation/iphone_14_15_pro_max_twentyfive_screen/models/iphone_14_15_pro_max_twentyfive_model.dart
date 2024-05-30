import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'pricinglist_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_twentyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfiveModel extends Equatable {
  Iphone1415ProMaxTwentyfiveModel({this.pricinglistItemList = const []});

  List<PricinglistItemModel> pricinglistItemList;

  Iphone1415ProMaxTwentyfiveModel copyWith(
      {List<PricinglistItemModel>? pricinglistItemList}) {
    return Iphone1415ProMaxTwentyfiveModel(
      pricinglistItemList: pricinglistItemList ?? this.pricinglistItemList,
    );
  }

  @override
  List<Object?> get props => [pricinglistItemList];
}
