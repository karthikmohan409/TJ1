import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/iphone_14_15_pro_max_five_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFiveScreen
    extends GetWidget<Iphone1415ProMaxFiveController> {
  Iphone1415ProMaxFiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 33.h,
                  vertical: 57.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWhatsappImage106x111,
                      height: 106.v,
                      width: 111.h,
                    ),
                    SizedBox(height: 11.v),
                    SizedBox(
                      width: 242.h,
                      child: Text(
                        "msg_welcome_to_tj_s".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineMedium28.copyWith(
                          height: 1.35,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "msg_login_in_to_continue".tr,
                      style:
                          CustomTextStyles.titleLargeOnPrimaryContainerRegular,
                    ),
                    SizedBox(height: 42.v),
                    CustomTextFormField(
                      controller: controller.phoneNumberController,
                      hintText: "msg_enter_your_phone".tr,
                      hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_4,
                      textInputType: TextInputType.phone,
                      validator: (value) {
                        if (!isValidPhone(value)) {
                          return "err_msg_please_enter_valid_phone_number".tr;
                        }
                        return null;
                      },
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineOnPrimaryContainerTL7,
                      filled: false,
                    ),
                    SizedBox(height: 25.v),
                    Obx(
                      () => CustomTextFormField(
                        controller: controller.passwordController,
                        hintText: "lbl_password".tr,
                        hintStyle:
                            CustomTextStyles.bodyLargeOnPrimaryContainer_4,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        suffix: InkWell(
                          onTap: () {
                            controller.isShowPassword.value =
                                !controller.isShowPassword.value;
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 21.v,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
                              height: 15.v,
                              width: 22.h,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 57.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: controller.isShowPassword.value,
                        contentPadding: EdgeInsets.only(
                          left: 30.h,
                          top: 18.v,
                          bottom: 18.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper
                            .outlineOnPrimaryContainerTL7,
                        filled: false,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    _buildRememberMeSection(),
                    SizedBox(height: 48.v),
                    CustomElevatedButton(
                      text: "lbl_login".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.v,
                          width: 18.h,
                          margin: EdgeInsets.only(
                            top: 9.v,
                            bottom: 10.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_or_sign_in_with".tr,
                            style:
                                CustomTextStyles.bodyLargeOnPrimaryContainer_5,
                          ),
                        ),
                        Container(
                          height: 1.v,
                          width: 18.h,
                          margin: EdgeInsets.only(
                            left: 7.h,
                            top: 9.v,
                            bottom: 10.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30.v),
                    _buildSocialLoginSection(),
                    SizedBox(height: 34.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(
                              "msg_don_t_have_an_account".tr,
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainer,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapTxtRegisternow();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "lbl_register_now".tr,
                                style: CustomTextStyles.titleLargePrimary,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30.v),
                    GestureDetector(
                      onTap: () {
                        onTapTxtRegisterlater();
                      },
                      child: Text(
                        "lbl_register_later".tr,
                        style: CustomTextStyles.titleLargePrimary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMeSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => CustomCheckboxButton(
            text: "lbl_remember_me".tr,
            value: controller.rememberMe.value,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {
              controller.rememberMe.value = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            "msg_forgot_password".tr,
            style: CustomTextStyles.titleMediumPrimary_1,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildSocialLoginSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup3,
            height: 49.v,
            width: 100.h,
            margin: EdgeInsets.only(right: 15.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup5,
            height: 49.v,
            width: 100.h,
            margin: EdgeInsets.symmetric(horizontal: 15.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup4,
            height: 49.v,
            width: 100.h,
            margin: EdgeInsets.only(left: 15.h),
          ),
        )
      ],
    );
  }

  /// Navigates to the iphone1415ProMaxSixScreen when the action is triggered.
  onTapTxtRegisternow() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxSixScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxSevenContainerScreen when the action is triggered.
  onTapTxtRegisterlater() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxSevenContainerScreen,
    );
  }
}
