import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/iphone_14_15_pro_max_twentyseven_bloc.dart';
import 'models/iphone_14_15_pro_max_twentyseven_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentysevenScreen extends StatelessWidget {
  Iphone1415ProMaxTwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxTwentysevenBloc>(
      create: (context) =>
          Iphone1415ProMaxTwentysevenBloc(Iphone1415ProMaxTwentysevenState(
        iphone1415ProMaxTwentysevenModelObj: Iphone1415ProMaxTwentysevenModel(),
      ))
            ..add(Iphone1415ProMaxTwentysevenInitialEvent()),
      child: Iphone1415ProMaxTwentysevenScreen(),
    );
  }

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
                                _buildFullNameSection(context),
                                SizedBox(height: 32.v),
                                _buildPhoneNumberSection(context),
                                SizedBox(height: 32.v),
                                _buildEmailIdSection(context),
                                SizedBox(height: 49.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "msg_address_information".tr,
                                    style: CustomTextStyles.titleMediumBold,
                                  ),
                                ),
                                SizedBox(height: 32.v),
                                _buildFlatApartmentSection(context),
                                SizedBox(height: 21.v),
                                _buildStreetNameSection(context),
                                SizedBox(height: 29.v),
                                _buildCitySection(context),
                                SizedBox(height: 27.v),
                                _buildStateProvinceSection(context),
                                SizedBox(height: 29.v),
                                _buildCountrySection(context),
                                SizedBox(height: 29.v),
                                _buildZipCodeSection(context),
                                SizedBox(height: 44.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_password".tr,
                                    style: CustomTextStyles.titleMediumBold,
                                  ),
                                ),
                                SizedBox(height: 32.v),
                                _buildNewPasswordSection(context),
                                SizedBox(height: 34.v),
                                _buildRepeatNewPasswordSection(context),
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
                                          onTapTxtLogin(context);
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
  Widget _buildFullNameSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_full_name".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
          selector: (state) => state.fullNameController,
          builder: (context, fullNameController) {
            return CustomTextFormField(
              controller: fullNameController,
              hintText: "msg_enter_your_full".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
          selector: (state) => state.phoneNumberController,
          builder: (context, phoneNumberController) {
            return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "msg_enter_your_phone".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailIdSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email_id2".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
              controller: emailController,
              hintText: "msg_enter_your_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildFlatApartmentSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_flat_apartment".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 9.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
          selector: (state) => state.enterFlatApartmController,
          builder: (context, enterFlatApartmController) {
            return CustomTextFormField(
              controller: enterFlatApartmController,
              hintText: "msg_enter_your_flat".tr,
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStreetNameSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_street_name".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
          selector: (state) => state.nameController,
          builder: (context, nameController) {
            return CustomTextFormField(
              controller: nameController,
              hintText: "msg_enter_your_street".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCitySection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_city".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
          selector: (state) => state.cityController,
          builder: (context, cityController) {
            return CustomTextFormField(
              controller: cityController,
              hintText: "lbl_enter_your_city".tr,
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStateProvinceSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_state_province".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 10.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
          selector: (state) => state.enterstateproviController,
          builder: (context, enterstateproviController) {
            return CustomTextFormField(
              controller: enterstateproviController,
              hintText: "msg_enter_your_state".tr,
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCountrySection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_country".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        BlocSelector<
            Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState,
            Iphone1415ProMaxTwentysevenModel?>(
          selector: (state) => state.iphone1415ProMaxTwentysevenModelObj,
          builder: (context, iphone1415ProMaxTwentysevenModelObj) {
            return CustomDropDown(
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFilter,
                  height: 9.v,
                  width: 11.h,
                ),
              ),
              hintText: "msg_select_your_country".tr,
              items:
                  iphone1415ProMaxTwentysevenModelObj?.dropdownItemList ?? [],
              contentPadding: EdgeInsets.fromLTRB(30.h, 19.v, 30.h, 16.v),
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildZipCodeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_zip_code".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
          selector: (state) => state.zipcodeController,
          builder: (context, zipcodeController) {
            return CustomTextFormField(
              controller: zipcodeController,
              hintText: "msg_enter_your_zip_code".tr,
              textInputType: TextInputType.number,
              validator: (value) {
                if (!isNumeric(value)) {
                  return "err_msg_please_enter_valid_number".tr;
                }
                return null;
              },
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildNewPasswordSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_new_password".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
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
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRepeatNewPasswordSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_repeat_new_password".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        BlocSelector<Iphone1415ProMaxTwentysevenBloc,
            Iphone1415ProMaxTwentysevenState, TextEditingController?>(
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
        )
      ],
    );
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxFiveScreen,
    );
  }
}
