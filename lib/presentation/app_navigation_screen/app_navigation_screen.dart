import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: AppDecoration.fillOnPrimaryContainer,
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro2".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro3".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxEighteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro4".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxNineteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro5".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro6".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro7".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro8".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro9".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro10".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro11".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro12".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro13".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro14".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro15".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone1415ProMaxSevenContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_calendar".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.calendarScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_calendar_one".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.calendarOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_calendar_two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.calendarTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_calendar_three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.calendarThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_calendar_four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.calendarFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro16".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxSeventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro17".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro18".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro19".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_iphone_14_15_pro20".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwentyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_calendar_five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.calendarFiveScreen),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "lbl_app_navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "msg_check_your_app_s".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
