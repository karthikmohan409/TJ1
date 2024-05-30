import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'bloc/iphone_14_15_pro_max_twentytwo_bloc.dart';
import 'models/iphone_14_15_pro_max_twentytwo_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentytwoScreen extends StatelessWidget {
  Iphone1415ProMaxTwentytwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxTwentytwoBloc>(
      create: (context) =>
          Iphone1415ProMaxTwentytwoBloc(Iphone1415ProMaxTwentytwoState(
        iphone1415ProMaxTwentytwoModelObj: Iphone1415ProMaxTwentytwoModel(),
      ))
            ..add(Iphone1415ProMaxTwentytwoInitialEvent()),
      child: Iphone1415ProMaxTwentytwoScreen(),
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
                  horizontal: 30.h,
                  vertical: 37.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorPrimary,
                      height: 179.v,
                      width: 148.h,
                    ),
                    SizedBox(height: 25.v),
                    SizedBox(
                      width: 188.h,
                      child: Text(
                        "msg_hello_how_can_i_help".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineMediumMedium.copyWith(
                          height: 1.28,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    CustomOutlinedButton(
                      height: 64.v,
                      text: "msg_contact_live_chat".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle:
                          CustomTextStyles.bodyLargeOnPrimaryContainer_6,
                    ),
                    SizedBox(height: 22.v),
                    BlocSelector<Iphone1415ProMaxTwentytwoBloc,
                        Iphone1415ProMaxTwentytwoState, TextEditingController?>(
                      selector: (state) => state.emailController,
                      builder: (context, emailController) {
                        return CustomTextFormField(
                          controller: emailController,
                          hintText: "msg_sent_us_an_e_mail".tr,
                          hintStyle:
                              CustomTextStyles.bodyLargeOnPrimaryContainer_6,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(22.h, 21.v, 10.h, 21.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLockPrimary,
                              height: 21.v,
                              width: 26.h,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 63.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                          contentPadding: EdgeInsets.only(
                            top: 21.v,
                            right: 30.h,
                            bottom: 21.v,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 22.v),
                    _buildProfileFaqsRow(context),
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
        text: "msg_help_and_support".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileFaqsRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfilePrimary,
            height: 31.adaptSize,
            width: 31.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_faqs".tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer_6,
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
}
