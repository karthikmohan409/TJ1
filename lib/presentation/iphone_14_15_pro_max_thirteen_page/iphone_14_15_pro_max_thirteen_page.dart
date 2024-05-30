import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/iphone_14_15_pro_max_thirteen_bloc.dart';
import 'models/iphone_14_15_pro_max_thirteen_model.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxThirteenPage extends StatefulWidget {
  const Iphone1415ProMaxThirteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxThirteenPageState createState() =>
      Iphone1415ProMaxThirteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxThirteenBloc>(
      create: (context) =>
          Iphone1415ProMaxThirteenBloc(Iphone1415ProMaxThirteenState(
        iphone1415ProMaxThirteenModelObj: Iphone1415ProMaxThirteenModel(),
      ))
            ..add(Iphone1415ProMaxThirteenInitialEvent()),
      child: Iphone1415ProMaxThirteenPage(),
    );
  }
}

class Iphone1415ProMaxThirteenPageState
    extends State<Iphone1415ProMaxThirteenPage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProMaxThirteenPage> {
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
                    _buildDateSection(context),
                    SizedBox(height: 20.v),
                    _buildCalendarSection(context),
                    SizedBox(height: 26.v),
                    Divider(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                      indent: 20.h,
                      endIndent: 15.h,
                    ),
                    SizedBox(height: 13.v),
                    _buildAvailabilitySection(context),
                    SizedBox(height: 25.v),
                    _buildRowtime(context),
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
  Widget _buildDateSection(BuildContext context) {
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
  Widget _buildCalendarSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<Iphone1415ProMaxThirteenBloc,
              Iphone1415ProMaxThirteenState>(
            builder: (context, state) {
              return SizedBox(
                height: 75.v,
                width: 305.h,
                child: EasyDateTimeLine(
                  initialDate:
                      state.selectedDatesFromCalendar ?? DateTime.now(),
                  locale: 'en_US',
                  headerProps: EasyHeaderProps(
                    selectedDateFormat: SelectedDateFormat.fullDateDMY,
                    monthPickerType: MonthPickerType.switcher,
                    showHeader: false,
                  ),
                  dayProps: EasyDayProps(),
                  onDateChange: (selectedDate) {
                    state.selectedDatesFromCalendar = selectedDate;
                  },
                ),
              );
            },
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
              onTapImgCalendartwo(context);
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHr(BuildContext context) {
    return CustomElevatedButton(
      height: 35.v,
      width: 71.h,
      text: "lbl_11_hr".tr,
      margin: EdgeInsets.only(left: 12.h),
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_6,
    );
  }

  /// Section Widget
  Widget _buildAvailabilitySection(BuildContext context) {
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
  Widget _buildBookButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.only(top: 4.v),
      onPressed: () {
        onTapBookButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildRowtime(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildColumn2courts(
            context,
            time: "lbl_8_am_11_am".tr,
            p2courts: "msg_3_courts_available".tr,
          ),
          _buildBookButton(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton1(BuildContext context) {
    return CustomOutlinedButton(
      width: 127.h,
      text: "lbl_book_now".tr,
      margin: EdgeInsets.symmetric(vertical: 2.v),
      onPressed: () {
        onTapBookButton1(context);
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
                "msg_5_courts_available".tr,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer_3,
              )
            ],
          ),
          _buildBookButton1(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton2(BuildContext context) {
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
          _buildBookButton2(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton3(BuildContext context) {
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
          _buildColumn2courts(
            context,
            time: "lbl_4_pm_6_pm".tr,
            p2courts: "msg_2_courts_available".tr,
          ),
          _buildBookButton3(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookButton4(BuildContext context) {
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
          _buildColumn2courts(
            context,
            time: "lbl_7_pm_8_pm".tr,
            p2courts: "msg_2_courts_available".tr,
          ),
          _buildBookButton4(context)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumn2courts(
    BuildContext context, {
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
  onTapRowf7sportscour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarFourScreen,
    );
  }

  /// Navigates to the calendarThreeScreen when the action is triggered.
  onTapImgCalendartwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarThreeScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapBookButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapBookButton1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarScreen,
    );
  }
}
