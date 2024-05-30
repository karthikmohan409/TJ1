import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/imageslider_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ImagesliderItemWidget extends StatelessWidget {
  ImagesliderItemWidget(this.imagesliderItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ImagesliderItemModel imagesliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle1,
        height: 496.v,
        width: 430.h,
      ),
    );
  }
}
