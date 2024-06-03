import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/iphone_14_15_pro_max_twentyseven_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentysevenScreen
    extends GetWidget<Iphone1415ProMaxTwentysevenController> {
  Iphone1415ProMaxTwentysevenScreen({Key? key})
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
          child: Form(
            key: _formKey,
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(height: 67.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 40.v),
                        padding: EdgeInsets.symmetric(horizontal: 33.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "msg_register_new_account".tr,
                                style: CustomTextStyles.headlineMedium28,
                              ),
                            ),
                            SizedBox(height: 32.v),
                            Column(
                              children: [
                                _buildFullNameSection(),
                                SizedBox(height: 32.v),
                                _buildPhoneNumberSection(),
                                SizedBox(height: 32.v),
                                _buildEmailIdSection(),
                                SizedBox(height: 49.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "msg_address_information".tr,
                                    style: CustomTextStyles.titleMediumBold,
                                  ),
                                ),
                                SizedBox(height: 32.v),
                                _buildFlatApartmentSection(),
                                SizedBox(height: 21.v),
                                _buildStreetNameSection(),
                                SizedBox(height: 29.v),
                                _buildCitySection(),
                                SizedBox(height: 27.v),
                                _buildStateProvinceSection(),
                                SizedBox(height: 29.v),
                                _buildCountrySection(),
                                SizedBox(height: 29.v),
                                _buildZipCodeSection(),
                                SizedBox(height: 44.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_password".tr,
                                    style: CustomTextStyles.titleMediumBold,
                                  ),
                                ),
                                SizedBox(height: 32.v),
                                _buildNewPasswordSection(),
                                SizedBox(height: 34.v),
                                _buildRepeatNewPasswordSection(),
                                SizedBox(height: 40.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text(
                                          "msg_privacy_policy2".tr,
                                          style:
                                              CustomTextStyles.titleMediumBold,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text(
                                          "lbl_read".tr,
                                          style: CustomTextStyles
                                              .titleMediumPrimary,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 45.v),
                                CustomElevatedButton(
                                  text: "lbl_register_now".tr,
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL30,
                                ),
                                SizedBox(height: 35.v),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 45.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text(
                                          "msg_already_have_an".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnPrimaryContainer,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          onTapTxtLogin();
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text(
                                            "lbl_login2".tr,
                                            style: CustomTextStyles
                                                .titleLargeOnPrimaryContainer,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_full_name".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: controller.fullNameController,
          hintText: "msg_enter_your_full".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: controller.phoneNumberController,
          hintText: "msg_enter_your_phone".tr,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailIdSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email_id2".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: controller.emailController,
          hintText: "msg_enter_your_email".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildFlatApartmentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_flat_apartment".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: controller.enterFlatApartmController,
          hintText: "msg_enter_your_flat".tr,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStreetNameSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_street_name".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: controller.nameController,
          hintText: "msg_enter_your_street".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCitySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_city".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller.cityController,
          hintText: "lbl_enter_your_city".tr,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStateProvinceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_state_province".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: controller.enterstateproviController,
          hintText: "msg_enter_your_state".tr,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCountrySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_country".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        CustomDropDown(
          icon: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFilter,
              height: 9.v,
              width: 11.h,
            ),
          ),
          hintText: "msg_select_your_country".tr,
          items: controller.iphone1415ProMaxTwentysevenModelObj.value
              .dropdownItemList!.value,
          contentPadding: EdgeInsets.fromLTRB(30.h, 19.v, 30.h, 16.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildZipCodeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_zip_code".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller.zipcodeController,
          hintText: "msg_enter_your_zip_code".tr,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildNewPasswordSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_new_password".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller.newpasswordController,
          hintText: "lbl_enter_password".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRepeatNewPasswordSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_repeat_new_password".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller.newpassword1Controller,
          hintText: "msg_enter_confirm_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        )
      ],
    );
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapTxtLogin() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxFiveScreen,
    );
  }
}
