import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/iphone_14_15_pro_max_sixteen_controller.dart';
import 'models/bookingslist_item_model.dart';
import 'models/iphone_14_15_pro_max_sixteen_model.dart';
import 'widgets/bookingslist_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixteenPage extends StatelessWidget {
  Iphone1415ProMaxSixteenPage({Key? key})
      : super(
          key: key,
        );

  Iphone1415ProMaxSixteenController controller = Get.put(
      Iphone1415ProMaxSixteenController(Iphone1415ProMaxSixteenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 56.v),
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
                _buildCalendarSection(),
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
                _buildBookingsList()
              ],
            ),
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
  Widget _buildCalendarSection() {
    return Obx(
      () => Container(
        height: 75.v,
        width: 392.h,
        margin: EdgeInsets.only(left: 4.h),
        child: EasyDateTimeLine(
          initialDate: controller.selectedDatesFromCalendar.value,
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
            controller.selectedDatesFromCalendar.value = selectedDate;
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
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingsList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: controller.iphone1415ProMaxSixteenModelObj.value
              .bookingslistItemList.value.length,
          itemBuilder: (context, index) {
            BookingslistItemModel model = controller
                .iphone1415ProMaxSixteenModelObj
                .value
                .bookingslistItemList
                .value[index];
            return BookingslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
