import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'imageslider2_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFourModel extends Equatable {
  Iphone1415ProMaxFourModel({this.imageslider2ItemList = const []});

  List<Imageslider2ItemModel> imageslider2ItemList;

  Iphone1415ProMaxFourModel copyWith(
      {List<Imageslider2ItemModel>? imageslider2ItemList}) {
    return Iphone1415ProMaxFourModel(
      imageslider2ItemList: imageslider2ItemList ?? this.imageslider2ItemList,
    );
  }

  @override
  List<Object?> get props => [imageslider2ItemList];
}
