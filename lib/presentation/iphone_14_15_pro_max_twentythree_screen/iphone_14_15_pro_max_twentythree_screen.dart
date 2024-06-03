import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_radio_button.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'controller/iphone_14_15_pro_max_twentythree_controller.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxTwentythreeScreen
    extends GetWidget<Iphone1415ProMaxTwentythreeController> {
  const Iphone1415ProMaxTwentythreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(
            top: 47.v,
            bottom: 79.v,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.86, 1.06),
              end: Alignment(0.3, 0.17),
              colors: [appTheme.deepPurple800, appTheme.indigo900],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 27.h,
              vertical: 22.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 49.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "msg_booking_confirmed".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_booking_id_123456".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer16_2,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildBookingDetailsRow(
                    eventDate: "lbl_june_1_2024".tr,
                    eventTime: "msg_4_00_pm_5_00".tr,
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildCourtInfoRow(
                    courtnumberthre: "lbl_court_number_3".tr,
                    duration: "lbl_15_min_ago".tr,
                  ),
                ),
                SizedBox(height: 9.v),
                Divider(),
                SizedBox(height: 19.v),
                _buildBookingStack(),
                SizedBox(height: 29.v),
                _buildBookingStack1(),
                SizedBox(height: 9.v),
                Divider(),
                SizedBox(height: 19.v),
                _buildBookingConfirmation(),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_booking_id_123456".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildBookingDetailsRow(
                    eventDate: "lbl_june_1_2024".tr,
                    eventTime: "msg_4_00_pm_5_00".tr,
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildCourtInfoRow(
                    courtnumberthre: "lbl_court_number_3".tr,
                    duration: "lbl_6_day_ago".tr,
                  ),
                ),
                SizedBox(height: 9.v),
                Divider(),
                SizedBox(height: 19.v),
                _buildBookingStack2(),
                SizedBox(height: 9.v),
                Divider(),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 47.v,
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 24.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_notifications".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingStack() {
    return SizedBox(
      height: 110.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Text(
                "msg_booking_confirmed".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "lbl_1_day_ago".tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer16_1,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 106.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "msg_booking_id_123456".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: _buildBookingDetailsRow(
                      eventDate: "lbl_june_1_2024".tr,
                      eventTime: "msg_4_00_pm_5_00".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_court_number_3".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingStack1() {
    return SizedBox(
      height: 110.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Text(
                "msg_booking_confirmed".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "lbl_4_day_ago".tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer16_1,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 106.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "msg_booking_id_123456".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: _buildBookingDetailsRow(
                      eventDate: "lbl_june_1_2024".tr,
                      eventTime: "msg_4_00_pm_5_00".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_court_number_3".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingConfirmation() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => Padding(
          padding: EdgeInsets.only(right: 49.h),
          child: CustomRadioButton(
            text: "msg_booking_confirmed".tr,
            value: "msg_booking_confirmed".tr,
            groupValue: controller.radioGroup.value,
            onChange: (value) {
              controller.radioGroup.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingStack2() {
    return SizedBox(
      height: 110.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Text(
                "msg_booking_confirmed".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "lbl_8_day_ago".tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer16_1,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 106.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "msg_booking_id_123456".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: _buildBookingDetailsRow(
                      eventDate: "lbl_june_1_2024".tr,
                      eventTime: "msg_4_00_pm_5_00".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_court_number_3".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildBookingDetailsRow({
    required String eventDate,
    required String eventTime,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          eventDate,
          style: CustomTextStyles.bodyLargeOnPrimaryContainer.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(
            eventTime,
            style: CustomTextStyles.bodyLargeOnPrimaryContainer.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildCourtInfoRow({
    required String courtnumberthre,
    required String duration,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            courtnumberthre,
            style: CustomTextStyles.bodyLargeOnPrimaryContainer.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
            ),
          ),
        ),
        Text(
          duration,
          style: CustomTextStyles.bodyLargeOnPrimaryContainer16_1.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
          ),
        )
      ],
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
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone1415ProMaxSevenPage:
        return Iphone1415ProMaxSevenPage();
      case AppRoutes.iphone1415ProMaxNineTabContainerPage:
        return Iphone1415ProMaxNineTabContainerPage();
      case AppRoutes.iphone1415ProMaxSixteenPage:
        return Iphone1415ProMaxSixteenPage();
      default:
        return DefaultWidget();
    }
  }
}
