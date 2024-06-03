import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
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
import 'controller/iphone_14_15_pro_max_twentyfour_controller.dart';
import 'models/programssection_item_model.dart';
import 'widgets/programssection_item_widget.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxTwentyfourScreen
    extends GetWidget<Iphone1415ProMaxTwentyfourController> {
  const Iphone1415ProMaxTwentyfourScreen({Key? key})
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
                    SizedBox(height: 20.v),
                    _buildProgramsSection()
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildFooterSection(),
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
            imagePath: ImageConstant.imgRectangle48264x430,
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
                top: 13.v,
                bottom: 13.v,
              ),
            ),
            title: AppbarTitle(
              text: "lbl_summer_camp".tr,
              margin: EdgeInsets.only(left: 12.h),
            ),
          )
        ],
      ),
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
              width: 355.h,
              child: Text(
                "msg_free_racquet_for".tr,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.48,
                ),
              ),
            ),
          ),
          CustomElevatedButton(
            height: 89.v,
            width: double.maxFinite,
            text: "lbl_read_more".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientDeepPurpleToDeepPurpleDecoration,
            buttonTextStyle: CustomTextStyles.titleSmallMedium,
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProgramsSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Obx(
        () => GroupedListView<ProgramssectionItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: controller.iphone1415ProMaxTwentyfourModelObj.value
              .programssectionItemList.value,
          groupBy: (element) => element.groupBy!.value,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 21.v,
                bottom: 18.v,
              ),
              child: Text(
                value,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                ),
              ),
            );
          },
          itemBuilder: (context, model) {
            return ProgramssectionItemWidget(
              model,
            );
          },
          separator: SizedBox(
            height: 13.v,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFooterSection() {
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
