import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/iphone_14_15_pro_max_seven_controller.dart';
import 'models/iphone_14_15_pro_max_seven_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'models/viewhierarchylist_item_model.dart';
import 'widgets/userprofilelist_item_widget.dart';
import 'widgets/viewhierarchylist_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSevenPage extends StatelessWidget {
  Iphone1415ProMaxSevenPage({Key? key})
      : super(
          key: key,
        );

  Iphone1415ProMaxSevenController controller = Get.put(
      Iphone1415ProMaxSevenController(Iphone1415ProMaxSevenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 45.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.86, 1.06),
              end: Alignment(0.3, 0.17),
              colors: [appTheme.deepPurple800, appTheme.indigo900],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 18.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 31.h,
                      right: 27.h,
                    ),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "msg_search_sports_or".tr,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Text(
                      "lbl_sports".tr,
                      style: CustomTextStyles.titleLargeOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                _buildUserProfileList(),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      onTapRowsummercamp();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 32.h,
                        right: 72.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 9.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_summer_camp".tr,
                              style:
                                  CustomTextStyles.titleLargeOnPrimaryContainer,
                            ),
                          ),
                          CustomElevatedButton(
                            height: 35.v,
                            width: 85.h,
                            text: "lbl_see_all".tr,
                            buttonTextStyle: CustomTextStyles.bodyLargePrimary,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                _buildViewHierarchyList(),
                SizedBox(height: 23.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      onTapRowafterschool();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 32.h,
                        right: 72.h,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 9.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "msg_after_school_training".tr,
                              style:
                                  CustomTextStyles.titleLargeOnPrimaryContainer,
                            ),
                          ),
                          CustomElevatedButton(
                            height: 35.v,
                            width: 85.h,
                            text: "lbl_see_all".tr,
                            margin: EdgeInsets.only(left: 41.h),
                            buttonTextStyle: CustomTextStyles.bodyLargePrimary,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                _buildImageRow(),
                _buildBadmintonRow()
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
      height: 45.v,
      leadingWidth: 73.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgWhatsappImage45x47,
        margin: EdgeInsets.only(left: 26.h),
      ),
      title: AppbarSubtitleOne(
        text: "lbl_sports_club".tr,
        margin: EdgeInsets.only(left: 6.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.symmetric(
            horizontal: 27.h,
            vertical: 8.v,
          ),
          onTap: () {
            onTapSettingsone();
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
      height: 188.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 34.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.iphone1415ProMaxSevenModelObj.value
              .userprofilelistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model = controller
                .iphone1415ProMaxSevenModelObj
                .value
                .userprofilelistItemList
                .value[index];
            return UserprofilelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchyList() {
    return SizedBox(
      height: 188.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 34.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.iphone1415ProMaxSevenModelObj.value
              .viewhierarchylistItemList.value.length,
          itemBuilder: (context, index) {
            ViewhierarchylistItemModel model = controller
                .iphone1415ProMaxSevenModelObj
                .value
                .viewhierarchylistItemList
                .value[index];
            return ViewhierarchylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageRow() {
    return Padding(
      padding: EdgeInsets.only(left: 34.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle92,
            height: 113.v,
            width: 233.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(10.h),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle93,
            height: 113.v,
            width: 233.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(10.h),
            ),
            margin: EdgeInsets.only(left: 16.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBadmintonRow() {
    return Padding(
      padding: EdgeInsets.only(left: 34.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_badminton".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg_2_days_in_a_week".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 205.h,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_taekwondo".tr,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                      Container(
                        width: 63.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 13.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillDeepPurple.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder13,
                        ),
                        child: Text(
                          "lbl_280".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "msg_2_days_in_a_week".tr,
                    style: CustomTextStyles.bodyLargeBlack90016,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the iphone1415ProMaxTwentythreeScreen when the action is triggered.
  onTapSettingsone() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxTwentythreeScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxTwentyfourScreen when the action is triggered.
  onTapRowsummercamp() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxTwentyfourScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxTwentyfiveScreen when the action is triggered.
  onTapRowafterschool() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxTwentyfiveScreen,
    );
  }
}
