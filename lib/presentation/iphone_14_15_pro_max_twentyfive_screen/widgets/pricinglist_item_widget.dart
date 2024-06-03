import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../controller/iphone_14_15_pro_max_twentyfive_controller.dart';
import '../models/pricinglist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PricinglistItemWidget extends StatelessWidget {
  PricinglistItemWidget(this.pricinglistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  PricinglistItemModel pricinglistItemModelObj;

  var controller = Get.find<Iphone1415ProMaxTwentyfiveController>();

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
              top: 14.v,
              right: 12.h,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 188.h,
                  child: Obx(
                    () => Text(
                      pricinglistItemModelObj.monthlyPriceTex!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeBluegray80001.copyWith(
                        height: 1.48,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
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
                        child: Obx(
                          () => Text(
                            pricinglistItemModelObj.priceAmountText!.value,
                            style: CustomTextStyles.titleMediumBluegray80001,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 8.v,
                          bottom: 6.v,
                        ),
                        child: Obx(
                          () => Text(
                            pricinglistItemModelObj.hstWeekText!.value,
                            style: CustomTextStyles.bodyMediumBluegray80001,
                          ),
                        ),
                      ),
                      Spacer(),
                      _buildRegisterButtonDays()
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

  /// Section Widget
  Widget _buildRegisterButtonDays() {
    return CustomElevatedButton(
      height: 32.v,
      width: 86.h,
      text: "lbl_register".tr,
      buttonStyle: CustomButtonStyles.fillDeepPurpleTL16,
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer16_2,
    );
  }
}
