import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/calendar_one_controller.dart'; // ignore_for_file: must_be_immutable

class CalendarOneScreen extends GetWidget<CalendarOneController> {
  const CalendarOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              _buildCalendarDetails(),
              SizedBox(height: 38.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_payment_method".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              CustomTextFormField(
                controller: controller.cardtypeoneController,
                hintText: "msg_debit_credit_card".tr,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 17.v, 10.h, 17.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 18.v,
                    width: 30.h,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 53.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 16.v,
                  right: 30.h,
                  bottom: 16.v,
                ),
              ),
              SizedBox(height: 17.v),
              CustomTextFormField(
                controller: controller.paymentapponeController,
                hintText: "lbl_apple_pay".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 14.v, 10.h, 14.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 24.v,
                    width: 19.h,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 53.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 16.v,
                  right: 30.h,
                  bottom: 16.v,
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_payment".tr,
                margin: EdgeInsets.only(
                  left: 9.h,
                  right: 8.h,
                ),
                buttonStyle: CustomButtonStyles.fillDeepPurpleTL30,
                buttonTextStyle:
                    CustomTextStyles.titleLargeOnPrimaryContainer_1,
                onPressed: () {
                  onTapPayment();
                },
              ),
              SizedBox(height: 21.v),
              GestureDetector(
                onTap: () {
                  onTapTxtBack();
                },
                child: Text(
                  "lbl_back".tr,
                  style: CustomTextStyles.titleLargeDeeppurple90001,
                ),
              ),
              SizedBox(height: 9.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              right: 25.h,
            ),
            child: Row(
              children: [
                AppbarSubtitle(
                  text: "lbl_payment".tr,
                  margin: EdgeInsets.only(top: 1.v),
                ),
                AppbarTitleIconbutton(
                  imagePath: ImageConstant.imgClose,
                  margin: EdgeInsets.only(
                    left: 247.h,
                    bottom: 3.v,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.black900.withOpacity(0.12),
            ),
          )
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildCalendarDetails() {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillBlueC.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder13,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendarBlueGray800,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  onTap: () {
                    onTapImgCalendarone();
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_21_mar_2024".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                Text(
                  "lbl_30".tr,
                  style: CustomTextStyles.titleMediumBluegray800,
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgF7SportscourtFillBlueGray80001,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "msg_badminton_court".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.blueGray80001,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              right: 34.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClockBlueGray80001,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "msg_08_00_am_09_00".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                Text(
                  "lbl_1hr".tr,
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the calendarThreeScreen when the action is triggered.
  onTapImgCalendarone() {
    Get.toNamed(
      AppRoutes.calendarThreeScreen,
    );
  }

  /// Navigates to the calendarTwoScreen when the action is triggered.
  onTapPayment() {
    Get.toNamed(
      AppRoutes.calendarTwoScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapTxtBack() {
    Get.toNamed(
      AppRoutes.calendarScreen,
    );
  }
}
