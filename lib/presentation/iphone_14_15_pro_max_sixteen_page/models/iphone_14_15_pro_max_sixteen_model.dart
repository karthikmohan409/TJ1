import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'bookingslist_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_sixteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixteenModel extends Equatable {
  Iphone1415ProMaxSixteenModel({this.bookingslistItemList = const []});

  List<BookingslistItemModel> bookingslistItemList;

  Iphone1415ProMaxSixteenModel copyWith(
      {List<BookingslistItemModel>? bookingslistItemList}) {
    return Iphone1415ProMaxSixteenModel(
      bookingslistItemList: bookingslistItemList ?? this.bookingslistItemList,
    );
  }

  @override
  List<Object?> get props => [bookingslistItemList];
}
