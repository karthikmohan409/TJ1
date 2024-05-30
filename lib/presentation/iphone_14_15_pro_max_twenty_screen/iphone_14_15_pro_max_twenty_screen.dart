import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'bloc/iphone_14_15_pro_max_twenty_bloc.dart';
import 'models/iphone_14_15_pro_max_twenty_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyScreen extends StatelessWidget {
  Iphone1415ProMaxTwentyScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxTwentyBloc>(
      create: (context) =>
          Iphone1415ProMaxTwentyBloc(Iphone1415ProMaxTwentyState(
        iphone1415ProMaxTwentyModelObj: Iphone1415ProMaxTwentyModel(),
      ))
            ..add(Iphone1415ProMaxTwentyInitialEvent()),
      child: Iphone1415ProMaxTwentyScreen(),
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 29.h,
                  vertical: 44.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_current_password".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: BlocSelector<Iphone1415ProMaxTwentyBloc,
                          Iphone1415ProMaxTwentyState, TextEditingController?>(
                        selector: (state) => state.passwordController,
                        builder: (context, passwordController) {
                          return CustomTextFormField(
                            controller: passwordController,
                            hintText: "msg_enter_current_password".tr,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 34.v),
                    _buildNewPasswordSection(context),
                    SizedBox(height: 34.v),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_repeat_new_password".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: BlocSelector<Iphone1415ProMaxTwentyBloc,
                          Iphone1415ProMaxTwentyState, TextEditingController?>(
                        selector: (state) => state.newpassword1Controller,
                        builder: (context, newpassword1Controller) {
                          return CustomTextFormField(
                            controller: newpassword1Controller,
                            hintText: "msg_enter_confirm_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 41.v),
                    CustomElevatedButton(
                      text: "lbl_confirm".tr,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        right: 4.h,
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      onPressed: () {
                        onTapConfirm(context);
                      },
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
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
        text: "lbl_change_password".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_new_password".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: BlocSelector<Iphone1415ProMaxTwentyBloc,
                Iphone1415ProMaxTwentyState, TextEditingController?>(
              selector: (state) => state.newpasswordController,
              builder: (context, newpasswordController) {
                return CustomTextFormField(
                  controller: newpasswordController,
                  hintText: "lbl_enter_password".tr,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true,
                );
              },
            ),
          )
        ],
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

  /// Navigates to the iphone1415ProMaxEightScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxEightScreen,
    );
  }
}
