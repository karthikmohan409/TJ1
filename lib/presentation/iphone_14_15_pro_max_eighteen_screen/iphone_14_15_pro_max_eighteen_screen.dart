import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'bloc/iphone_14_15_pro_max_eighteen_bloc.dart';
import 'models/iphone_14_15_pro_max_eighteen_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxEighteenScreen extends StatelessWidget {
  Iphone1415ProMaxEighteenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxEighteenBloc>(
      create: (context) =>
          Iphone1415ProMaxEighteenBloc(Iphone1415ProMaxEighteenState(
        iphone1415ProMaxEighteenModelObj: Iphone1415ProMaxEighteenModel(),
      ))
            ..add(Iphone1415ProMaxEighteenInitialEvent()),
      child: Iphone1415ProMaxEighteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxEighteenBloc,
        Iphone1415ProMaxEighteenState>(
      builder: (context, state) {
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
                  begin: Alignment(0.86, 1.06),
                  end: Alignment(0.3, 0.17),
                  colors: [appTheme.deepPurple800, appTheme.indigo900],
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(28.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        onTapRowlockone(context);
                      },
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLock,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 1.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: Text(
                              "lbl_profile".tr,
                              style: CustomTextStyles.titleMediumPrimary_1,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Divider(),
                    SizedBox(height: 18.v),
                    GestureDetector(
                      onTap: () {
                        onTapRowinboxone(context);
                      },
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgInbox,
                            height: 19.v,
                            width: 16.h,
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: Text(
                              "msg_privacy_policy".tr,
                              style: CustomTextStyles.titleMediumPrimary_1,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Divider(),
                    SizedBox(height: 15.v),
                    GestureDetector(
                      onTap: () {
                        onTapRowbagone(context);
                      },
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBag,
                            height: 21.v,
                            width: 16.h,
                            margin: EdgeInsets.only(bottom: 4.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 21.h,
                              top: 4.v,
                            ),
                            child: Text(
                              "lbl_change_password".tr,
                              style: CustomTextStyles.titleMediumPrimary_1,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Divider(),
                    SizedBox(height: 19.v),
                    GestureDetector(
                      onTap: () {
                        onTapRowprofiletwo(context);
                      },
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProfile,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "msg_help_and_support".tr,
                              style: CustomTextStyles.titleMediumPrimary_1,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Divider(),
                    SizedBox(height: 18.v),
                    GestureDetector(
                      onTap: () {
                        onTapRowthumbsupone(context);
                      },
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp,
                            height: 19.v,
                            width: 17.h,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "lbl_theme".tr,
                              style: CustomTextStyles.titleMediumPrimary_1,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Divider(),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 52.v,
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 24.v,
          bottom: 24.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_settings".tr,
        margin: EdgeInsets.only(left: 12.h),
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

  /// Navigates to the iphone1415ProMaxNineteenScreen when the action is triggered.
  onTapRowlockone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxNineteenScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxTwentyoneScreen when the action is triggered.
  onTapRowinboxone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxTwentyoneScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxTwentyScreen when the action is triggered.
  onTapRowbagone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxTwentyScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxTwentytwoScreen when the action is triggered.
  onTapRowprofiletwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxTwentytwoScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxTwentysixScreen when the action is triggered.
  onTapRowthumbsupone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxTwentysixScreen,
    );
  }
}
