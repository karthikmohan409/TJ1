import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_seven_controller.dart';
import '../models/userprofilelist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(this.userprofilelistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<Iphone1415ProMaxSevenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 233.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofilelistItemModelObj.userImage!.value,
              height: 113.v,
              width: 233.h,
              radius: BorderRadius.vertical(
                top: Radius.circular(10.h),
              ),
            ),
          ),
          Container(
            width: 233.h,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofilelistItemModelObj.sportName!.value,
                    style: CustomTextStyles.titleMediumBlack90019,
                  ),
                ),
                SizedBox(height: 7.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_courts".tr,
                        style: CustomTextStyles.bodyLargeBlack90016_1,
                      ),
                      TextSpan(
                        text: "lbl_13".tr,
                        style: CustomTextStyles.titleMediumBlack900Bold,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v)
              ],
            ),
          )
        ],
      ),
    );
  }
}
