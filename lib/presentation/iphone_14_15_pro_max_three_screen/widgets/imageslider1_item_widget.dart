import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_three_controller.dart';
import '../models/imageslider1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Imageslider1ItemWidget extends StatelessWidget {
  Imageslider1ItemWidget(this.imageslider1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Imageslider1ItemModel imageslider1ItemModelObj;

  var controller = Get.find<Iphone1415ProMaxThreeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle1486x430,
        height: 486.v,
        width: 430.h,
      ),
    );
  }
}
