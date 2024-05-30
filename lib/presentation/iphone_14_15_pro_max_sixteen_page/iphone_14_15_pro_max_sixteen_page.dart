import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/iphone_14_15_pro_max_sixteen_bloc.dart';
import 'models/bookingslist_item_model.dart';
import 'models/iphone_14_15_pro_max_sixteen_model.dart';
import 'widgets/bookingslist_item_widget.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxSixteenPage extends StatelessWidget {
  const Iphone1415ProMaxSixteenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxSixteenBloc>(
      create: (context) =>
          Iphone1415ProMaxSixteenBloc(Iphone1415ProMaxSixteenState(
        iphone1415ProMaxSixteenModelObj: Iphone1415ProMaxSixteenModel(),
      ))
            ..add(Iphone1415ProMaxSixteenInitialEvent()),
      child: Iphone1415ProMaxSixteenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text(
                    "lbl_march_17_2024".tr,
                    style: CustomTextStyles.titleMediumBold,
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
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_bookings2".tr,
                          style: CustomTextStyles.bodyLargeOnPrimaryContainer_2,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_3".tr,
                          style: CustomTextStyles.titleMediumBold_1,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 12.v),
                _buildBookingsList(context)
              ],
            ),
          ),
        ),
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
    return BlocBuilder<Iphone1415ProMaxSixteenBloc,
        Iphone1415ProMaxSixteenState>(
      builder: (context, state) {
        return Container(
          height: 75.v,
          width: 392.h,
          margin: EdgeInsets.only(left: 4.h),
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
  Widget _buildBookingsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: BlocSelector<Iphone1415ProMaxSixteenBloc,
          Iphone1415ProMaxSixteenState, Iphone1415ProMaxSixteenModel?>(
        selector: (state) => state.iphone1415ProMaxSixteenModelObj,
        builder: (context, iphone1415ProMaxSixteenModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount:
                iphone1415ProMaxSixteenModelObj?.bookingslistItemList.length ??
                    0,
            itemBuilder: (context, index) {
              BookingslistItemModel model = iphone1415ProMaxSixteenModelObj
                      ?.bookingslistItemList[index] ??
                  BookingslistItemModel();
              return BookingslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
