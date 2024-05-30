import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'imageslider1_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThreeModel extends Equatable {
  Iphone1415ProMaxThreeModel({this.imageslider1ItemList = const []});

  List<Imageslider1ItemModel> imageslider1ItemList;

  Iphone1415ProMaxThreeModel copyWith(
      {List<Imageslider1ItemModel>? imageslider1ItemList}) {
    return Iphone1415ProMaxThreeModel(
      imageslider1ItemList: imageslider1ItemList ?? this.imageslider1ItemList,
    );
  }

  @override
  List<Object?> get props => [imageslider1ItemList];
}
