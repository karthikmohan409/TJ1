import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_seven_controller.dart';
import '../models/viewhierarchylist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(this.viewhierarchylistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

  var controller = Get.find<Iphone1415ProMaxSevenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 188.v,
      width: 233.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: viewhierarchylistItemModelObj.image1!.value,
              height: 75.v,
              width: 233.h,
              radius: BorderRadius.vertical(
                bottom: Radius.circular(10.h),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 188.v,
              width: 233.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: viewhierarchylistItemModelObj.image2!.value,
                      height: 188.v,
                      width: 233.h,
                      radius: BorderRadius.vertical(
                        top: Radius.circular(10.h),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        bottom: 21.v,
                      ),
                      child: Obx(
                        () => Text(
                          viewhierarchylistItemModelObj.text1!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
