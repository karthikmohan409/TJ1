import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'bloc/iphone_14_15_pro_max_seventeen_bloc.dart';
import 'models/bookingdetails_item_model.dart';
import 'models/iphone_14_15_pro_max_seventeen_model.dart';
import 'widgets/bookingdetails_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSeventeenScreen extends StatelessWidget {
  Iphone1415ProMaxSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxSeventeenBloc>(
      create: (context) =>
          Iphone1415ProMaxSeventeenBloc(Iphone1415ProMaxSeventeenState(
        iphone1415ProMaxSeventeenModelObj: Iphone1415ProMaxSeventeenModel(),
      ))
            ..add(Iphone1415ProMaxSeventeenInitialEvent()),
      child: Iphone1415ProMaxSeventeenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
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
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 9.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Text(
                      "lbl_march_17_2024".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                _buildCalendarSection(context),
                SizedBox(height: 22.v),
                Divider(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                  indent: 5.h,
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_bookings2".tr,
                            style:
                                CustomTextStyles.bodyLargeOnPrimaryContainer_2,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_2".tr,
                            style: CustomTextStyles.titleMediumBold_1,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                _buildBookingDetails(context)
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: "lbl_my_bookings".tr,
            margin: EdgeInsets.only(
              left: 7.h,
              right: 226.h,
            ),
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 394.h,
              child: Divider(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
              ),
            ),
          )
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildCalendarSection(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxSeventeenBloc,
        Iphone1415ProMaxSeventeenState>(
      builder: (context, state) {
        return SizedBox(
          height: 75.v,
          width: 380.h,
          child: EasyDateTimeLine(
            initialDate: state.selectedDatesFromCalendar ?? DateTime.now(),
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
            itemBuilder:
                (context, dayNumber, dayName, monthName, fullDate, isSelected) {
              return isSelected
                  ? Container(
                      width: 49.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.h,
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
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: theme.colorScheme.onPrimaryContainer
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
                                color: theme.colorScheme.onPrimaryContainer
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
                        color: theme.colorScheme.errorContainer,
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
  Widget _buildBookingDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: BlocSelector<Iphone1415ProMaxSeventeenBloc,
          Iphone1415ProMaxSeventeenState, Iphone1415ProMaxSeventeenModel?>(
        selector: (state) => state.iphone1415ProMaxSeventeenModelObj,
        builder: (context, iphone1415ProMaxSeventeenModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.5.v),
                child: SizedBox(
                  width: 365.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.blueGray80001,
                  ),
                ),
              );
            },
            itemCount: iphone1415ProMaxSeventeenModelObj
                    ?.bookingdetailsItemList.length ??
                0,
            itemBuilder: (context, index) {
              BookingdetailsItemModel model = iphone1415ProMaxSeventeenModelObj
                      ?.bookingdetailsItemList[index] ??
                  BookingdetailsItemModel();
              return BookingdetailsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone1415ProMaxSevenPage;
      case BottomBarEnum.Booknow:
        return AppRoutes.iphone1415ProMaxNineTabContainerPage;
      case BottomBarEnum.tf:
        return AppRoutes.iphone1415ProMaxSixteenPage;
      case BottomBarEnum.Instagram:
        return "/";
      case BottomBarEnum.Store:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.iphone1415ProMaxSevenPage:
        return Iphone1415ProMaxSevenPage.builder(context);
      case AppRoutes.iphone1415ProMaxNineTabContainerPage:
        return Iphone1415ProMaxNineTabContainerPage.builder(context);
      case AppRoutes.iphone1415ProMaxSixteenPage:
        return Iphone1415ProMaxSixteenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
