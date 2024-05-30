import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'bookingdetails_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_seventeen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSeventeenModel extends Equatable {
  Iphone1415ProMaxSeventeenModel({this.bookingdetailsItemList = const []});

  List<BookingdetailsItemModel> bookingdetailsItemList;

  Iphone1415ProMaxSeventeenModel copyWith(
      {List<BookingdetailsItemModel>? bookingdetailsItemList}) {
    return Iphone1415ProMaxSeventeenModel(
      bookingdetailsItemList:
          bookingdetailsItemList ?? this.bookingdetailsItemList,
    );
  }

  @override
  List<Object?> get props => [bookingdetailsItemList];
}
