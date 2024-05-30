import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/iphone_14_15_pro_max_fourteen_bloc.dart';
import 'models/iphone_14_15_pro_max_fourteen_model.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxFourteenPage extends StatefulWidget {
  const Iphone1415ProMaxFourteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxFourteenPageState createState() =>
      Iphone1415ProMaxFourteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxFourteenBloc>(
      create: (context) =>
          Iphone1415ProMaxFourteenBloc(Iphone1415ProMaxFourteenState(
        iphone1415ProMaxFourteenModelObj: Iphone1415ProMaxFourteenModel(),
      ))
            ..add(Iphone1415ProMaxFourteenInitialEvent()),
      child: Iphone1415ProMaxFourteenPage(),
    );
  }
}

class Iphone1415ProMaxFourteenPageState
    extends State<Iphone1415ProMaxFourteenPage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProMaxFourteenPage> {
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    right: 15.h,
                  ),
                  child: Column(
                    children: [
                      Divider(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.1),
                      ),
                      SizedBox(height: 14.v),
                      _buildDateRow(context),
                      SizedBox(height: 19.v),
                      _buildCalendarSection(context),
                      SizedBox(height: 27.v),
                      Divider(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.1),
                      ),
                      SizedBox(height: 13.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6.v,
                                bottom: 5.v,
                              ),
                              child: Text(
                                "msg_available_hr_slots".tr,
                                style: CustomTextStyles
                                    .titleLargeOnPrimaryContainer_1,
                              ),
                            ),
                            CustomElevatedButton(
                              height: 35.v,
                              width: 69.h,
                              text: "lbl_0_hr".tr,
                              margin: EdgeInsets.only(left: 12.h),
                              buttonTextStyle: CustomTextStyles
                                  .bodyLargeOnPrimaryContainer_6,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 101.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgLayer1,
                        height: 124.v,
                        width: 119.h,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_there_are_no_available".tr,
                        style: CustomTextStyles.titleLargeOnPrimaryContainer,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDateRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Text(
            "lbl_march_17_2024".tr,
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
    );
  }

  /// Section Widget
  Widget _buildCalendarSection(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxFourteenBloc,
        Iphone1415ProMaxFourteenState>(
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
                        color: appTheme.redA700,
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

  /// Navigates to the calendarFourScreen when the action is triggered.
  onTapRowf7sportscour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarFourScreen,
    );
  }
}
