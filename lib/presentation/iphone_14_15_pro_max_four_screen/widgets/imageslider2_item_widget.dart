import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_four_controller.dart';
import '../models/imageslider2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Imageslider2ItemWidget extends StatelessWidget {
  Imageslider2ItemWidget(this.imageslider2ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Imageslider2ItemModel imageslider2ItemModelObj;

  var controller = Get.find<Iphone1415ProMaxFourController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup2606,
        height: 284.v,
        width: 363.h,
        margin: EdgeInsets.fromLTRB(43.h, 120.v, 23.h, 98.v),
      ),
    );
  }
}
