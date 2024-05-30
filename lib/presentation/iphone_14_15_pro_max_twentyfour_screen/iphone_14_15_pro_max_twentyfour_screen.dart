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
import 'bloc/iphone_14_15_pro_max_twentyfour_bloc.dart';
import 'models/iphone_14_15_pro_max_twentyfour_model.dart';
import 'models/programssection_item_model.dart';
import 'widgets/programssection_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyfourScreen extends StatelessWidget {
  Iphone1415ProMaxTwentyfourScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxTwentyfourBloc>(
      create: (context) =>
          Iphone1415ProMaxTwentyfourBloc(Iphone1415ProMaxTwentyfourState(
        iphone1415ProMaxTwentyfourModelObj: Iphone1415ProMaxTwentyfourModel(),
      ))
            ..add(Iphone1415ProMaxTwentyfourInitialEvent()),
      child: Iphone1415ProMaxTwentyfourScreen(),
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
                    SizedBox(height: 20.v),
                    _buildProgramsSection(context)
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildFooterSection(context),
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
  Widget _buildProgramsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: BlocSelector<Iphone1415ProMaxTwentyfourBloc,
          Iphone1415ProMaxTwentyfourState, Iphone1415ProMaxTwentyfourModel?>(
        selector: (state) => state.iphone1415ProMaxTwentyfourModelObj,
        builder: (context, iphone1415ProMaxTwentyfourModelObj) {
          return GroupedListView<ProgramssectionItemModel, String>(
            shrinkWrap: true,
            stickyHeaderBackgroundColor: Colors.transparent,
            elements:
                iphone1415ProMaxTwentyfourModelObj?.programssectionItemList ??
                    [],
            groupBy: (element) => element.groupBy!,
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
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFooterSection(BuildContext context) {
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
