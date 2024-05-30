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
import 'bloc/iphone_14_15_pro_max_twentyfive_bloc.dart';
import 'models/iphone_14_15_pro_max_twentyfive_model.dart';
import 'models/pricinglist_item_model.dart';
import 'widgets/pricinglist_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfiveScreen extends StatelessWidget {
  Iphone1415ProMaxTwentyfiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxTwentyfiveBloc>(
      create: (context) =>
          Iphone1415ProMaxTwentyfiveBloc(Iphone1415ProMaxTwentyfiveState(
        iphone1415ProMaxTwentyfiveModelObj: Iphone1415ProMaxTwentyfiveModel(),
      ))
            ..add(Iphone1415ProMaxTwentyfiveInitialEvent()),
      child: Iphone1415ProMaxTwentyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: SizedBox(
            child: Column(
              children: [
                _buildHeaderSection(context),
                Column(
                  children: [
                    SizedBox(height: 14.v),
                    _buildDescriptionSection(context),
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
                    _buildPricingList(context)
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection(BuildContext context) {
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
  Widget _buildReadMoreButton(BuildContext context) {
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
  Widget _buildDescriptionSection(BuildContext context) {
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
          _buildReadMoreButton(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPricingList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: BlocSelector<Iphone1415ProMaxTwentyfiveBloc,
          Iphone1415ProMaxTwentyfiveState, Iphone1415ProMaxTwentyfiveModel?>(
        selector: (state) => state.iphone1415ProMaxTwentyfiveModelObj,
        builder: (context, iphone1415ProMaxTwentyfiveModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 13.v,
              );
            },
            itemCount: iphone1415ProMaxTwentyfiveModelObj
                    ?.pricinglistItemList.length ??
                0,
            itemBuilder: (context, index) {
              PricinglistItemModel model = iphone1415ProMaxTwentyfiveModelObj
                      ?.pricinglistItemList[index] ??
                  PricinglistItemModel();
              return PricinglistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
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
