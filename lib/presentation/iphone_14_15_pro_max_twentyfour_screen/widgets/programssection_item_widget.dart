import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../controller/iphone_14_15_pro_max_twentyfour_controller.dart';
import '../models/programssection_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProgramssectionItemWidget extends StatelessWidget {
  ProgramssectionItemWidget(this.programssectionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ProgramssectionItemModel programssectionItemModelObj;

  var controller = Get.find<Iphone1415ProMaxTwentyfourController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle51,
            height: 109.v,
            width: 108.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              right: 12.h,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_full_day_9_00am".tr,
                  style: CustomTextStyles.bodyLargeBluegray80001,
                ),
                SizedBox(height: 29.v),
                SizedBox(
                  width: 237.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "lbl_375".tr,
                          style: CustomTextStyles.titleMediumBluegray80001,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 8.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          "lbl_hst_week".tr,
                          style: CustomTextStyles.bodyMediumBluegray80001,
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        height: 32.v,
                        width: 86.h,
                        text: "lbl_register".tr,
                        buttonStyle: CustomButtonStyles.fillDeepPurpleTL16,
                        buttonTextStyle:
                            CustomTextStyles.bodyLargeOnPrimaryContainer16_2,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
