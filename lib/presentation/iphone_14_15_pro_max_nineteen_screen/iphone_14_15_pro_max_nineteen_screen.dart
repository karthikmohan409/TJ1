import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'bloc/iphone_14_15_pro_max_nineteen_bloc.dart';
import 'models/iphone_14_15_pro_max_nineteen_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxNineteenScreen extends StatelessWidget {
  Iphone1415ProMaxNineteenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxNineteenBloc>(
      create: (context) =>
          Iphone1415ProMaxNineteenBloc(Iphone1415ProMaxNineteenState(
        iphone1415ProMaxNineteenModelObj: Iphone1415ProMaxNineteenModel(),
      ))
            ..add(Iphone1415ProMaxNineteenInitialEvent()),
      child: Iphone1415ProMaxNineteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
            padding: EdgeInsets.symmetric(
              horizontal: 29.h,
              vertical: 23.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 10.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse17126x126,
                  height: 126.adaptSize,
                  width: 126.adaptSize,
                  radius: BorderRadius.circular(
                    63.h,
                  ),
                ),
                SizedBox(height: 12.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEdit,
                      height: 17.adaptSize,
                      width: 17.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 1.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_edit".tr,
                        style: CustomTextStyles.titleMediumPrimary_1,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 37.v),
                BlocSelector<Iphone1415ProMaxNineteenBloc,
                    Iphone1415ProMaxNineteenState, TextEditingController?>(
                  selector: (state) => state.johndoevalueController,
                  builder: (context, johndoevalueController) {
                    return CustomTextFormField(
                      controller: johndoevalueController,
                      hintText: "lbl_john_doe".tr,
                      hintStyle: theme.textTheme.titleMedium!,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.v),
                      borderDecoration:
                          TextFormFieldStyleHelper.underLineOnPrimaryContainer,
                      filled: false,
                    );
                  },
                ),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: _buildEmailSection(
                    context,
                    emailid: "lbl_phone_number".tr,
                    email: "lbl_555_123_4567".tr,
                  ),
                ),
                SizedBox(height: 15.v),
                Divider(),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: _buildEmailSection(
                    context,
                    emailid: "lbl_email_id".tr,
                    email: "msg_john_doe_example_com".tr,
                  ),
                ),
                SizedBox(height: 14.v),
                Divider(),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: _buildEmailSection(
                    context,
                    emailid: "lbl_gender".tr,
                    email: "lbl_male".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 43.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_address_info".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                SizedBox(height: 37.v),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: _buildEmailSection(
                    context,
                    emailid: "lbl_street_name".tr,
                    email: "lbl_1234_elm_street".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: _buildEmailSection(
                    context,
                    emailid: "lbl_city".tr,
                    email: "lbl_anytown".tr,
                  ),
                ),
                SizedBox(height: 14.v),
                Divider(),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: _buildEmailSection(
                    context,
                    emailid: "msg_state_province".tr,
                    email: "lbl_any_state".tr,
                  ),
                ),
                SizedBox(height: 14.v),
                Divider()
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
        text: "lbl_profile".tr,
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

  /// Common widget
  Widget _buildEmailSection(
    BuildContext context, {
    required String emailid,
    required String email,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            emailid,
            style: CustomTextStyles.bodyLargeOnPrimaryContainer_7.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Text(
          email,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
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
