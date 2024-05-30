import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'imageslider_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwoModel extends Equatable {
  Iphone1415ProMaxTwoModel({this.imagesliderItemList = const []});

  List<ImagesliderItemModel> imagesliderItemList;

  Iphone1415ProMaxTwoModel copyWith(
      {List<ImagesliderItemModel>? imagesliderItemList}) {
    return Iphone1415ProMaxTwoModel(
      imagesliderItemList: imagesliderItemList ?? this.imagesliderItemList,
    );
  }

  @override
  List<Object?> get props => [imagesliderItemList];
}
