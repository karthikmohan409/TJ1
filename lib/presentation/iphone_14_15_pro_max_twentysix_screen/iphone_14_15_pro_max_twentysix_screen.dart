import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'bloc/iphone_14_15_pro_max_twentysix_bloc.dart';
import 'models/iphone_14_15_pro_max_twentysix_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentysixScreen extends StatelessWidget {
  Iphone1415ProMaxTwentysixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxTwentysixBloc>(
      create: (context) =>
          Iphone1415ProMaxTwentysixBloc(Iphone1415ProMaxTwentysixState(
        iphone1415ProMaxTwentysixModelObj: Iphone1415ProMaxTwentysixModel(),
      ))
            ..add(Iphone1415ProMaxTwentysixInitialEvent()),
      child: Iphone1415ProMaxTwentysixScreen(),
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
                  horizontal: 27.h,
                  vertical: 32.v,
                ),
                child: Column(
                  children: [
                    _buildMainContentRow(context),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 63.h,
                          right: 86.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "lbl_purple".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Text(
                              "lbl_black".tr,
                              style: theme.textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    _buildMainContentRow1(context),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 72.h,
                        right: 83.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_blue".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "lbl_green".tr,
                            style: theme.textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 24.v,
          bottom: 20.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_theme".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContentRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: AppDecoration.gradientDeepPurpleToIndigo900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 22.v),
                _buildStatusBar(
                  context,
                  time: "lbl_9_41".tr,
                  profileTwo: "lbl_profile".tr,
                  onTapRowarrowthree: () {
                    onTapRowarrowthree(context);
                  },
                ),
                SizedBox(height: 17.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse17,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                ),
                SizedBox(height: 5.v),
                _buildEditRow(
                  context,
                  text: "lbl_edit".tr,
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildNameRow(
                    context,
                    name: "lbl_name".tr,
                    username: "lbl_john_doe".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildEmailRow(
                    context,
                    emailid: "lbl_phone_number".tr,
                    email: "lbl_555_123_4567".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildEmailRow(
                    context,
                    emailid: "lbl_email_id".tr,
                    email: "msg_john_doe_example_com".tr,
                  ),
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 68.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_street_name".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_1234_elm_street".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 41.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_city".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_anytown".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 67.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "msg_state_province".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_any_state".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 93.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                )
              ],
            ),
          ),
          Container(
            decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 22.v),
                _buildStatusBar1(
                  context,
                  time: "lbl_9_41".tr,
                  profileText: "lbl_profile".tr,
                  onTapRowarrowthree: () {
                    onTapRowarrowthree1(context);
                  },
                ),
                SizedBox(height: 17.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse17,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                ),
                SizedBox(height: 5.v),
                _buildEditRow(
                  context,
                  text: "lbl_edit".tr,
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildNameRow(
                    context,
                    name: "lbl_name".tr,
                    username: "lbl_john_doe".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildEmailRow(
                    context,
                    emailid: "lbl_phone_number".tr,
                    email: "lbl_555_123_4567".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildEmailRow(
                    context,
                    emailid: "lbl_email_id".tr,
                    email: "msg_john_doe_example_com".tr,
                  ),
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 68.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_street_name".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_1234_elm_street".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 41.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_city".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_anytown".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 67.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "msg_state_province".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_any_state".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 93.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContentRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 22.v),
                _buildStatusBar(
                  context,
                  time: "lbl_9_41".tr,
                  profileTwo: "lbl_profile".tr,
                  onTapRowarrowthree: () {
                    onTapRowarrowthree2(context);
                  },
                ),
                SizedBox(height: 17.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse17,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                ),
                SizedBox(height: 5.v),
                _buildEditRow(
                  context,
                  text: "lbl_edit".tr,
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildNameRow(
                    context,
                    name: "lbl_name".tr,
                    username: "lbl_john_doe".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildEmailRow(
                    context,
                    emailid: "lbl_phone_number".tr,
                    email: "lbl_555_123_4567".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildEmailRow(
                    context,
                    emailid: "lbl_email_id".tr,
                    email: "msg_john_doe_example_com".tr,
                  ),
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 68.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_street_name".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_1234_elm_street".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 41.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_city".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_anytown".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 67.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "msg_state_province".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_any_state".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 93.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 103.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_country".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 103.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_any_country".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 120.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                )
              ],
            ),
          ),
          Container(
            decoration: AppDecoration.outlineOnPrimaryContainer2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 22.v),
                _buildStatusBar1(
                  context,
                  time: "lbl_9_41".tr,
                  profileText: "lbl_profile".tr,
                  onTapRowarrowthree: () {
                    onTapRowarrowthree3(context);
                  },
                ),
                SizedBox(height: 17.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse17,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                ),
                SizedBox(height: 5.v),
                _buildEditRow(
                  context,
                  text: "lbl_edit".tr,
                ),
                SizedBox(height: 15.v),
                BlocSelector<Iphone1415ProMaxTwentysixBloc,
                    Iphone1415ProMaxTwentysixState, TextEditingController?>(
                  selector: (state) => state.namevalueoneController,
                  builder: (context, namevalueoneController) {
                    return CustomTextFormField(
                      width: 154.h,
                      controller: namevalueoneController,
                      hintText: "lbl_john_doe".tr,
                      hintStyle: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.v),
                      borderDecoration:
                          TextFormFieldStyleHelper.underLineOnPrimaryContainer,
                      filled: false,
                    );
                  },
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildEmailRow(
                    context,
                    emailid: "lbl_phone_number".tr,
                    email: "lbl_555_123_4567".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                BlocSelector<Iphone1415ProMaxTwentysixBloc,
                    Iphone1415ProMaxTwentysixState, TextEditingController?>(
                  selector: (state) => state.phoneNumberController,
                  builder: (context, phoneNumberController) {
                    return CustomTextFormField(
                      width: 153.h,
                      controller: phoneNumberController,
                      hintText: "msg_john_doe_example_com".tr,
                      hintStyle: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(vertical: 6.v),
                      borderDecoration:
                          TextFormFieldStyleHelper.underLineOnPrimaryContainer,
                      filled: false,
                    );
                  },
                ),
                SizedBox(height: 68.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_street_name".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_1234_elm_street".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 41.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_city".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 50.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_anytown".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 67.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "msg_state_province".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_any_state".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 93.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                ),
                SizedBox(height: 103.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_country".tr,
                      style: CustomTextStyles.gTWalsheimProOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 103.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl_any_country".tr,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles
                          .gTWalsheimProOnPrimaryContainerMedium,
                    ),
                  ),
                ),
                SizedBox(height: 120.v),
                SizedBox(
                  width: 153.h,
                  child: Divider(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEmailRow(
    BuildContext context, {
    required String emailid,
    required String email,
  }) {
    return SizedBox(
      width: 153.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            emailid,
            style: CustomTextStyles.gTWalsheimProOnPrimaryContainer.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          Text(
            email,
            style:
                CustomTextStyles.gTWalsheimProOnPrimaryContainerMedium.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEditRow(
    BuildContext context, {
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 7.adaptSize,
          width: 7.adaptSize,
          margin: EdgeInsets.only(top: 1.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text(
            text,
            style: CustomTextStyles.gTWalsheimProPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildNameRow(
    BuildContext context, {
    required String name,
    required String username,
  }) {
    return SizedBox(
      width: 154.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: CustomTextStyles.gTWalsheimProOnPrimaryContainer.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          Text(
            username,
            style:
                CustomTextStyles.gTWalsheimProOnPrimaryContainerMedium.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildStatusBar(
    BuildContext context, {
    required String time,
    required String profileTwo,
    Function? onTapRowarrowthree,
  }) {
    return SizedBox(
      width: 179.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 8,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 9.v),
            child: Text(
              time,
              style: CustomTextStyles.sFProTextOnPrimaryContainer.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapRowarrowthree?.call();
            },
            child: Container(
              width: 50.h,
              margin: EdgeInsets.only(top: 4.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrow3,
                    height: 1.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 5.v,
                    ),
                  ),
                  Text(
                    profileTwo,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    ),
                  )
                ],
              ),
            ),
          ),
          Spacer(
            flex: 32,
          ),
          Spacer(
            flex: 58,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSim1Single,
            height: 5.v,
            width: 1.h,
            margin: EdgeInsets.only(bottom: 10.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNetworkWifiFull,
            height: 5.v,
            width: 1.h,
            margin: EdgeInsets.only(
              left: 14.h,
              bottom: 10.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBatteryFullUncharged,
            height: 5.v,
            width: 1.h,
            margin: EdgeInsets.only(
              left: 24.h,
              bottom: 10.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBatteryFullUncharged,
            height: 5.v,
            width: 1.h,
            margin: EdgeInsets.only(bottom: 10.v),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildStatusBar1(
    BuildContext context, {
    required String time,
    required String profileText,
    Function? onTapRowarrowthree,
  }) {
    return SizedBox(
      width: 179.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 21,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 9.v),
            child: Text(
              time,
              style: CustomTextStyles.sFProTextOnPrimaryContainer.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapRowarrowthree?.call();
            },
            child: Container(
              width: 50.h,
              margin: EdgeInsets.only(top: 4.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrow3,
                    height: 1.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 5.v,
                    ),
                  ),
                  Text(
                    profileText,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    ),
                  )
                ],
              ),
            ),
          ),
          Spacer(
            flex: 78,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSim1Single,
            height: 5.v,
            width: 1.h,
            margin: EdgeInsets.only(bottom: 9.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNetworkWifiFull,
            height: 5.v,
            width: 1.h,
            margin: EdgeInsets.only(
              left: 14.h,
              bottom: 9.v,
            ),
          )
        ],
      ),
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

  /// Navigates to the iphone1415ProMaxEighteenScreen when the action is triggered.
  onTapRowarrowthree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxEighteenScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxEighteenScreen when the action is triggered.
  onTapRowarrowthree1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxEighteenScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxEighteenScreen when the action is triggered.
  onTapRowarrowthree2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxEighteenScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxEighteenScreen when the action is triggered.
  onTapRowarrowthree3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxEighteenScreen,
    );
  }
}
