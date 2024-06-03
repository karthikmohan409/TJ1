import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_switch.dart';
import 'controller/calendar_controller.dart'; // ignore_for_file: must_be_immutable

class CalendarScreen extends GetWidget<CalendarController> {
  const CalendarScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              _buildTimeSection(),
              Spacer(),
              SizedBox(height: 61.v),
              CustomElevatedButton(
                text: "lbl_payment".tr,
                margin: EdgeInsets.only(
                  left: 8.h,
                  right: 7.h,
                ),
                buttonStyle: CustomButtonStyles.fillDeepPurpleTL30,
                buttonTextStyle:
                    CustomTextStyles.titleLargeOnPrimaryContainer_1,
                onPressed: () {
                  onTapPayment();
                },
              )
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
                  text: "lbl_booking".tr,
                  margin: EdgeInsets.only(top: 1.v),
                ),
                AppbarTitleIconbutton(
                  imagePath: ImageConstant.imgClose,
                  margin: EdgeInsets.only(
                    left: 257.h,
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
  Widget _buildTimeSection() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildEndDateSection(
            end: "lbl_date".tr,
            p21mar2024One: "lbl_21_mar_2024".tr,
            onTapCalendarthree: () {
              onTapCalendarone();
            },
          ),
          SizedBox(height: 23.v),
          _buildEndDateSection(
            end: "lbl_end".tr,
            p21mar2024One: "lbl_21_mar_2024".tr,
            onTapCalendarthree: () {
              onTapCalendarthree();
            },
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 240.h,
                        margin: EdgeInsets.only(right: 75.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_start_time".tr,
                              style: CustomTextStyles.titleMediumBlack900,
                            ),
                            Text(
                              "lbl_end_time".tr,
                              style: CustomTextStyles.titleMediumBlack900,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onTapRowtime();
                            },
                            child: Container(
                              width: 153.h,
                              padding: EdgeInsets.symmetric(vertical: 16.v),
                              decoration:
                                  AppDecoration.outlineDeepPurple.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder7,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Obx(
                                      () => Text(
                                        controller
                                            .calendarModelObj.value.time.value,
                                        style: CustomTextStyles
                                            .bodyLargeBlack900_4,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgClock,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapRowclockthree();
                            },
                            child: Container(
                              width: 146.h,
                              padding: EdgeInsets.symmetric(vertical: 16.v),
                              decoration:
                                  AppDecoration.outlineDeepPurple.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder7,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Obx(
                                      () => Text(
                                        controller
                                            .calendarModelObj.value.time1.value,
                                        style: CustomTextStyles
                                            .bodyLargeBlack900_4,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgClock,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 48.v,
                    bottom: 18.v,
                  ),
                  child: Text(
                    "lbl_3hr".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 27.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGgRepeat,
                height: 32.adaptSize,
                width: 32.adaptSize,
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 7.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 9.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_repeat".tr,
                  style: CustomTextStyles.bodyLargePoppinsBlack900,
                ),
              ),
              Obx(
                () => CustomSwitch(
                  margin: EdgeInsets.only(left: 11.h),
                  value: controller.isSelectedSwitch.value,
                  onChange: (value) {
                    controller.isSelectedSwitch.value = value;
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEndDateSection({
    required String end,
    required String p21mar2024One,
    Function? onTapCalendarthree,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          end,
          style: CustomTextStyles.titleMediumBlack900.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 9.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.outlineDeepPurple.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  p21mar2024One,
                  style: CustomTextStyles.bodyLargeBlack900_4.copyWith(
                    color: appTheme.black900.withOpacity(0.7),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCalendarDeepPurple90001,
                height: 21.adaptSize,
                width: 21.adaptSize,
                onTap: () {
                  onTapCalendarthree?.call();
                },
              )
            ],
          ),
        )
      ],
    );
  }

  /// Navigates to the calendarThreeScreen when the action is triggered.
  onTapCalendarone() {
    Get.toNamed(
      AppRoutes.calendarThreeScreen,
    );
  }

  /// Navigates to the calendarThreeScreen when the action is triggered.
  onTapCalendarthree() {
    Get.toNamed(
      AppRoutes.calendarThreeScreen,
    );
  }

  /// Displays a time picker dialog and updates the selected time in the
  /// [calendarModelObj] object of the current [controller] if the user
  /// selects a valid time.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapRowtime() async {
    TimeOfDay? time = await showTimePicker(
        context: Get.context!,
        initialTime: controller.calendarModelObj.value.selectedTime!.value);
    if (time != null) {
      controller.calendarModelObj.value.selectedTime!.value = time;
      var parseDate = DateFormat.jm().parse(time.format(Get.context!));
      controller.calendarModelObj.value.time.value =
          parseDate.format(pattern: HH_mm);
    }
  }

  /// Displays a time picker dialog and updates the selected time in the
  /// [calendarModelObj] object of the current [controller] if the user
  /// selects a valid time.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapRowclockthree() async {
    TimeOfDay? time = await showTimePicker(
        context: Get.context!,
        initialTime: controller.calendarModelObj.value.selectedTime1!.value);
    if (time != null) {
      controller.calendarModelObj.value.selectedTime1!.value = time;
      var parseDate = DateFormat.jm().parse(time.format(Get.context!));
      controller.calendarModelObj.value.time1.value =
          parseDate.format(pattern: HH_mm);
    }
  }

  /// Navigates to the calendarOneScreen when the action is triggered.
  onTapPayment() {
    Get.toNamed(
      AppRoutes.calendarOneScreen,
    );
  }
}
