import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/iphone_14_15_pro_max_fifteen_bloc.dart';
import 'models/iphone_14_15_pro_max_fifteen_model.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxFifteenPage extends StatefulWidget {
  const Iphone1415ProMaxFifteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxFifteenPageState createState() =>
      Iphone1415ProMaxFifteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxFifteenBloc>(
      create: (context) =>
          Iphone1415ProMaxFifteenBloc(Iphone1415ProMaxFifteenState(
        iphone1415ProMaxFifteenModelObj: Iphone1415ProMaxFifteenModel(),
      ))
            ..add(Iphone1415ProMaxFifteenInitialEvent()),
      child: Iphone1415ProMaxFifteenPage(),
    );
  }
}

class Iphone1415ProMaxFifteenPageState
    extends State<Iphone1415ProMaxFifteenPage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProMaxFifteenPage> {
  @override
  bool get wantKeepAlive => true;
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
                    _buildDateAndCourts(context),
                    SizedBox(height: 19.v),
                    _buildCalendarSection(context),
                    SizedBox(height: 27.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                      indent: 20.h,
                      endIndent: 15.h,
                    ),
                    SizedBox(height: 13.v),
                    _buildAvailableHours(context),
                    SizedBox(height: 25.v),
                    _buildTimeSlot(context),
                    SizedBox(height: 13.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    ),
                    SizedBox(height: 14.v),
                    _buildTimeSlot1(context),
                    SizedBox(height: 12.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    ),
                    SizedBox(height: 15.v),
                    _buildTimeSlot2(context),
                    SizedBox(height: 11.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    ),
                    SizedBox(height: 15.v),
                    _buildTimeSlot3(context),
                    SizedBox(height: 14.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                    ),
                    SizedBox(height: 15.v),
                    _buildTimeSlot4(context),
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
  Widget _buildDateAndCourts(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "msg_february_17_2024".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapRowf7sportscour(context);
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
                    "lbl_courts2".tr,
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
  Widget _buildCalendarSection(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxFifteenBloc,
        Iphone1415ProMaxFifteenState>(
      builder: (context, state) {
        return SizedBox(
          height: 75.v,
          width: 392.h,
          child: EasyDateTimeLine(
            initialDate: state.selectedDatesFromCalendar ?? DateTime.now(),
            locale: 'en_US',
            headerProps: EasyHeaderProps(
              selectedDateFormat: SelectedDateFormat.fullDateDMY,
              monthPickerType: MonthPickerType.switcher,
              showHeader: false,
            ),
            dayProps: EasyDayProps(
              width: 11.h,
              height: 11.v,
            ),
            onDateChange: (selectedDate) {
              state.selectedDatesFromCalendar = selectedDate;
            },
            itemBuilder:
                (context, dayNumber, dayName, monthName, fullDate, isSelected) {
              return isSelected
                  ? Container(
                      height: 11.adaptSize,
                      width: 11.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.orange700,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ))
                  : Container(
                      height: 11.adaptSize,
                      width: 11.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.lightGreenA700,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHr(BuildContext context) {
    return CustomElevatedButton(
      height: 35.v,
      width: 69.h,
      text: "lbl_0_hr".tr,
      margin: EdgeInsets.only(left: 12.h),
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_6,
    );
  }

  /// Section Widget
  Widget _buildAvailableHours(BuildContext context) {
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
          _buildHr(context),
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
  Widget _buildBookNowButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.only(top: 4.v),
      onPressed: () {
        onTapBookNowButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildTimeSlot(BuildContext context) {
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
                "lbl_8_am_11_am".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_5_courts_available".tr,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer_3,
              )
            ],
          ),
          _buildBookNowButton(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookNowButton1(BuildContext context) {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.symmetric(vertical: 2.v),
      onPressed: () {
        onTapBookNowButton1(context);
      },
    );
  }

  /// Section Widget
  Widget _buildTimeSlot1(BuildContext context) {
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
                "msg_10_courts_available".tr,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer_3,
              )
            ],
          ),
          _buildBookNowButton1(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookNowButton2(BuildContext context) {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.symmetric(vertical: 2.v),
    );
  }

  /// Section Widget
  Widget _buildTimeSlot2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCourtsAvailability(
            context,
            time: "lbl_12_pm_2_pm".tr,
            courtsAvailable: "msg_7_courts_available".tr,
          ),
          _buildBookNowButton2(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookNowButton3(BuildContext context) {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.only(top: 2.v),
    );
  }

  /// Section Widget
  Widget _buildTimeSlot3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCourtsAvailability(
            context,
            time: "lbl_4_pm_6_pm".tr,
            courtsAvailable: "msg_7_courts_available".tr,
          ),
          _buildBookNowButton3(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookNowButton4(BuildContext context) {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.symmetric(vertical: 2.v),
    );
  }

  /// Section Widget
  Widget _buildTimeSlot4(BuildContext context) {
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
                "lbl_7_pm_8_pm".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                "msg_3_courts_available".tr,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer_3,
              )
            ],
          ),
          _buildBookNowButton4(context)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCourtsAvailability(
    BuildContext context, {
    required String time,
    required String courtsAvailable,
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
          courtsAvailable,
          style: CustomTextStyles.bodyLargeOnPrimaryContainer_3.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.65),
          ),
        )
      ],
    );
  }

  /// Navigates to the calendarFourScreen when the action is triggered.
  onTapRowf7sportscour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarFourScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapBookNowButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapBookNowButton1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarScreen,
    );
  }
}
