import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/iphone_14_15_pro_max_nine_bloc.dart';
import 'models/iphone_14_15_pro_max_nine_model.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxNinePage extends StatefulWidget {
  const Iphone1415ProMaxNinePage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxNinePageState createState() =>
      Iphone1415ProMaxNinePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxNineBloc>(
      create: (context) => Iphone1415ProMaxNineBloc(Iphone1415ProMaxNineState(
        iphone1415ProMaxNineModelObj: Iphone1415ProMaxNineModel(),
      ))
        ..add(Iphone1415ProMaxNineInitialEvent()),
      child: Iphone1415ProMaxNinePage(),
    );
  }
}

class Iphone1415ProMaxNinePageState extends State<Iphone1415ProMaxNinePage>
    with AutomaticKeepAliveClientMixin<Iphone1415ProMaxNinePage> {
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
              children: [SizedBox(height: 13.v), _buildMainContent(context)],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContent(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
          indent: 20.h,
          endIndent: 15.h,
        ),
        SizedBox(height: 14.v),
        Padding(
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
          ),
        ),
        SizedBox(height: 20.v),
        Padding(
          padding: EdgeInsets.only(
            left: 28.h,
            right: 19.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<Iphone1415ProMaxNineBloc, Iphone1415ProMaxNineState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 75.v,
                    width: 317.h,
                    child: EasyDateTimeLine(
                      initialDate:
                          state.selectedDatesFromCalendar ?? DateTime.now(),
                      locale: 'en_US',
                      headerProps: EasyHeaderProps(
                        selectedDateFormat: SelectedDateFormat.fullDateDMY,
                        monthPickerType: MonthPickerType.switcher,
                        showHeader: false,
                      ),
                      dayProps: EasyDayProps(
                        width: 49.h,
                        height: 60.v,
                      ),
                      onDateChange: (selectedDate) {
                        state.selectedDatesFromCalendar = selectedDate;
                      },
                      itemBuilder: (context, dayNumber, dayName, monthName,
                          fullDate, isSelected) {
                        return isSelected
                            ? Container(
                                width: 49.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 5.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.cyan5023,
                                  borderRadius: BorderRadius.circular(
                                    14.h,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      dayName.toString(),
                                      style:
                                          theme.textTheme.titleMedium!.copyWith(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 6.v,
                                        bottom: 1.v,
                                      ),
                                      child: Text(
                                        dayNumber.toString(),
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimaryContainer_6
                                            .copyWith(
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(1),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                            : Container(
                                height: 11.adaptSize,
                                width: 11.adaptSize,
                                decoration: BoxDecoration(
                                  color: appTheme.orange700,
                                  borderRadius: BorderRadius.circular(
                                    5.h,
                                  ),
                                ),
                              );
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
        ),
        SizedBox(height: 26.v),
        Divider(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
          indent: 20.h,
          endIndent: 15.h,
        ),
        SizedBox(height: 13.v),
        Padding(
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
              CustomElevatedButton(
                height: 35.v,
                width: 68.h,
                text: "lbl_2_hr".tr,
                margin: EdgeInsets.only(left: 12.h),
                buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_6,
              ),
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
        ),
        SizedBox(height: 26.v),
        Padding(
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
                    "lbl_10_am_11_pm".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_5_courts_available".tr,
                    style: CustomTextStyles.bodyLargeOnPrimaryContainer_3,
                  )
                ],
              ),
              CustomOutlinedButton(
                width: 127.h,
                text: "lbl_book_now".tr,
                margin: EdgeInsets.only(bottom: 3.v),
              )
            ],
          ),
        ),
        SizedBox(height: 13.v),
        Divider(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
        ),
        SizedBox(height: 15.v),
        Padding(
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
                    "lbl_2_pm_3_pm".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_10_courts_available".tr,
                    style: CustomTextStyles.bodyLargeOnPrimaryContainer_3,
                  )
                ],
              ),
              CustomOutlinedButton(
                width: 127.h,
                text: "lbl_book_now".tr,
                margin: EdgeInsets.symmetric(vertical: 2.v),
              )
            ],
          ),
        ),
        SizedBox(height: 13.v),
        Divider(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
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
}
