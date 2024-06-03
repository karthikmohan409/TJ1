import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'controller/iphone_14_15_pro_max_twentyfive_controller.dart';
import 'models/pricinglist_item_model.dart';
import 'widgets/pricinglist_item_widget.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxTwentyfiveScreen
    extends GetWidget<Iphone1415ProMaxTwentyfiveController> {
  const Iphone1415ProMaxTwentyfiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 79.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.4, 0.97),
              end: Alignment(0.4, 0.02),
              colors: [appTheme.deepPurple800, appTheme.indigo900],
            ),
          ),
          child: SizedBox(
            child: Column(
              children: [
                _buildHeaderSection(),
                Column(
                  children: [
                    SizedBox(height: 14.v),
                    _buildDescriptionSection(),
                    SizedBox(height: 21.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 29.h),
                        child: Text(
                          "lbl_badminton".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    _buildPricingList()
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return SizedBox(
      height: 264.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle48,
            height: 264.v,
            width: 430.h,
            radius: BorderRadius.vertical(
              bottom: Radius.circular(40.h),
            ),
            alignment: Alignment.center,
          ),
          CustomAppBar(
            height: 41.v,
            leadingWidth: 55.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow3,
              margin: EdgeInsets.only(
                left: 28.h,
                top: 12.v,
                bottom: 14.v,
              ),
            ),
            title: AppbarTitle(
              text: "msg_after_school_training".tr,
              margin: EdgeInsets.only(left: 12.h),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReadMoreButton() {
    return CustomElevatedButton(
      height: 89.v,
      width: double.maxFinite,
      text: "lbl_read_more".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientDeepPurpleToDeepPurpleDecoration,
      buttonTextStyle: CustomTextStyles.titleSmallMedium,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildDescriptionSection() {
    return SizedBox(
      height: 123.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 368.h,
              child: Text(
                "msg_accelerate_your".tr,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.48,
                ),
              ),
            ),
          ),
          _buildReadMoreButton()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPricingList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 13.v,
            );
          },
          itemCount: controller.iphone1415ProMaxTwentyfiveModelObj.value
              .pricinglistItemList.value.length,
          itemBuilder: (context, index) {
            PricinglistItemModel model = controller
                .iphone1415ProMaxTwentyfiveModelObj
                .value
                .pricinglistItemList
                .value[index];
            return PricinglistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
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
