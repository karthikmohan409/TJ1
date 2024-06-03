import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/iphone_14_15_pro_max_thirteen_controller.dart';
import 'models/iphone_14_15_pro_max_thirteen_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThirteenPage extends StatelessWidget {
  Iphone1415ProMaxThirteenPage({Key? key})
      : super(
          key: key,
        );

  Iphone1415ProMaxThirteenController controller = Get.put(
      Iphone1415ProMaxThirteenController(Iphone1415ProMaxThirteenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.4, 0.97),
              end: Alignment(0.4, 0.02),
              colors: [appTheme.deepPurple800, appTheme.indigo900],
            ),
          ),
          child: Container(
            decoration: AppDecoration.gradientDeepPurpleToIndigo9001,
            child: Column(
              children: [
                SizedBox(height: 13.v),
                Column(
                  children: [
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                      indent: 20.h,
                      endIndent: 15.h,
                    ),
                    SizedBox(height: 14.v),
                    _buildDateSection(),
                    SizedBox(height: 20.v),
                    _buildCalendarSection(),
                    SizedBox(height: 26.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                      indent: 20.h,
                      endIndent: 15.h,
                    ),
                    SizedBox(height: 13.v),
                    _buildAvailabilitySection(),
                    SizedBox(height: 25.v),
                    _buildRowtime(),
                    SizedBox(height: 13.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    ),
                    SizedBox(height: 14.v),
                    _buildTimeSlot1(),
                    SizedBox(height: 12.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    ),
                    SizedBox(height: 15.v),
                    _buildTimeSlot2(),
                    SizedBox(height: 11.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    ),
                    SizedBox(height: 15.v),
                    _buildTimeSlot3(),
                    SizedBox(height: 14.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    ),
                    SizedBox(height: 15.v),
                    _buildTimeSlot4(),
                    SizedBox(height: 13.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDateSection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              "lbl_march_21_2024".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapRowf7sportscour();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgF7SportscourtFill,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_all_courts".tr,
                    style: CustomTextStyles.titleMediumPrimary,
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
  Widget _buildCalendarSection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => SizedBox(
              height: 75.v,
              width: 305.h,
              child: EasyDateTimeLine(
                initialDate: controller.selectedDatesFromCalendar.value,
                locale: 'en_US',
                headerProps: EasyHeaderProps(
                  selectedDateFormat: SelectedDateFormat.fullDateDMY,
                  monthPickerType: MonthPickerType.switcher,
                  showHeader: false,
                ),
                dayProps: EasyDayProps(),
                onDateChange: (selectedDate) {
                  controller.selectedDatesFromCalendar.value = selectedDate;
                },
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCalendar,
            height: 34.v,
            width: 33.h,
            margin: EdgeInsets.only(
              left: 33.h,
              top: 23.v,
              bottom: 18.v,
            ),
            onTap: () {
              onTapImgCalendartwo();
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHr() {
    return CustomElevatedButton(
      height: 35.v,
      width: 71.h,
      text: "lbl_11_hr".tr,
      margin: EdgeInsets.only(left: 12.h),
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_6,
    );
  }

  /// Section Widget
  Widget _buildAvailabilitySection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 14.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              "msg_available_hr_slots".tr,
              style: CustomTextStyles.titleLargeOnPrimaryContainer_1,
            ),
          ),
          _buildHr(),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_30_hr".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton() {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.only(top: 4.v),
      onPressed: () {
        onTapBookButton();
      },
    );
  }

  /// Section Widget
  Widget _buildRowtime() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildColumn2courts(
            time: "lbl_8_am_11_am".tr,
            p2courts: "msg_3_courts_available".tr,
          ),
          _buildBookButton()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton1() {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.symmetric(vertical: 2.v),
      onPressed: () {
        onTapBookButton1();
      },
    );
  }

  /// Section Widget
  Widget _buildTimeSlot1() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_9_am_12_pm".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                "msg_5_courts_available".tr,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer_3,
              )
            ],
          ),
          _buildBookButton1()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton2() {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.symmetric(vertical: 2.v),
    );
  }

  /// Section Widget
  Widget _buildTimeSlot2() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_12_pm_2_pm".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                "msg_7_courts_available".tr,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer_3,
              )
            ],
          ),
          _buildBookButton2()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton3() {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.only(top: 2.v),
    );
  }

  /// Section Widget
  Widget _buildTimeSlot3() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildColumn2courts(
            time: "lbl_4_pm_6_pm".tr,
            p2courts: "msg_2_courts_available".tr,
          ),
          _buildBookButton3()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton4() {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.symmetric(vertical: 2.v),
    );
  }

  /// Section Widget
  Widget _buildTimeSlot4() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildColumn2courts(
            time: "lbl_7_pm_8_pm".tr,
            p2courts: "msg_2_courts_available".tr,
          ),
          _buildBookButton4()
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumn2courts({
    required String time,
    required String p2courts,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          time,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          p2courts,
          style: CustomTextStyles.bodyLargeOnPrimaryContainer_3.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.65),
          ),
        )
      ],
    );
  }

  /// Navigates to the calendarFourScreen when the action is triggered.
  onTapRowf7sportscour() {
    Get.toNamed(
      AppRoutes.calendarFourScreen,
    );
  }

  /// Navigates to the calendarThreeScreen when the action is triggered.
  onTapImgCalendartwo() {
    Get.toNamed(
      AppRoutes.calendarThreeScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapBookButton() {
    Get.toNamed(
      AppRoutes.calendarScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapBookButton1() {
    Get.toNamed(
      AppRoutes.calendarScreen,
    );
  }
}
