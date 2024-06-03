import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/calendar_four_controller.dart'; // ignore_for_file: must_be_immutable

class CalendarFourScreen extends GetWidget<CalendarFourController> {
  const CalendarFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            children: [
              _buildLanesRow(),
              SizedBox(height: 18.v),
              Divider(
                color: appTheme.black900.withOpacity(0.12),
              ),
              SizedBox(height: 15.v),
              _buildAllCourtsRow(),
              SizedBox(height: 19.v),
              Divider(
                color: appTheme.black900.withOpacity(0.12),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text(
                    "lbl_courts_1".tr,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              Divider(
                color: appTheme.black900.withOpacity(0.12),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text(
                    "lbl_courts_2".tr,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              Divider(
                color: appTheme.black900.withOpacity(0.12),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text(
                    "lbl_courts_3".tr,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              Divider(
                color: appTheme.black900.withOpacity(0.12),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanesRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_lanes".tr,
            style: theme.textTheme.headlineSmall,
          ),
          CustomIconButton(
            height: 26.adaptSize,
            width: 26.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imgClose,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAllCourtsRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_all_courts".tr,
              style: CustomTextStyles.titleLargeBold,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkDeepPurple90001,
            height: 28.adaptSize,
            width: 28.adaptSize,
          )
        ],
      ),
    );
  }
}
