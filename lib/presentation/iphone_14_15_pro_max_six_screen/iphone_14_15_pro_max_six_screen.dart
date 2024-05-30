import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/iphone_14_15_pro_max_six_bloc.dart';
import 'models/iphone_14_15_pro_max_six_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixScreen extends StatelessWidget {
  Iphone1415ProMaxSixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxSixBloc>(
      create: (context) => Iphone1415ProMaxSixBloc(Iphone1415ProMaxSixState(
        iphone1415ProMaxSixModelObj: Iphone1415ProMaxSixModel(),
      ))
        ..add(Iphone1415ProMaxSixInitialEvent()),
      child: Iphone1415ProMaxSixScreen(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildFullNameSection(context),
                                SizedBox(height: 32.v),
                                _buildPhoneNumberSection(context),
                                SizedBox(height: 32.v),
                                _buildEmailIdSection(context),
                                SizedBox(height: 49.v),
                                Text(
                                  "msg_address_information".tr,
                                  style: CustomTextStyles.titleMediumBold,
                                ),
                                SizedBox(height: 32.v),
                                Text(
                                  "msg_flat_apartment".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                SizedBox(height: 9.v),
                                BlocSelector<
                                    Iphone1415ProMaxSixBloc,
                                    Iphone1415ProMaxSixState,
                                    TextEditingController?>(
                                  selector: (state) =>
                                      state.enterFlatApartmController,
                                  builder:
                                      (context, enterFlatApartmController) {
                                    return CustomTextFormField(
                                      controller: enterFlatApartmController,
                                      hintText: "msg_enter_your_flat".tr,
                                    );
                                  },
                                ),
                                SizedBox(height: 21.v),
                                _buildStreetNameSection(context),
                                SizedBox(height: 29.v),
                                _buildCitySection(context),
                                SizedBox(height: 27.v),
                                Text(
                                  "msg_state_province".tr,
                                  style: theme.textTheme.titleMedium,
                                )
                              ],
                            ),
                            SizedBox(height: 10.v),
                            BlocSelector<
                                Iphone1415ProMaxSixBloc,
                                Iphone1415ProMaxSixState,
                                TextEditingController?>(
                              selector: (state) =>
                                  state.enterstateproviController,
                              builder: (context, enterstateproviController) {
                                return CustomTextFormField(
                                  controller: enterstateproviController,
                                  hintText: "msg_enter_your_state".tr,
                                  textInputAction: TextInputAction.done,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12.h,
                                    vertical: 15.v,
                                  ),
                                );
                              },
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
        BlocSelector<Iphone1415ProMaxSixBloc, Iphone1415ProMaxSixState,
            TextEditingController?>(
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
        BlocSelector<Iphone1415ProMaxSixBloc, Iphone1415ProMaxSixState,
            TextEditingController?>(
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
        BlocSelector<Iphone1415ProMaxSixBloc, Iphone1415ProMaxSixState,
            TextEditingController?>(
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
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 18.v,
              ),
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
        BlocSelector<Iphone1415ProMaxSixBloc, Iphone1415ProMaxSixState,
            TextEditingController?>(
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
        BlocSelector<Iphone1415ProMaxSixBloc, Iphone1415ProMaxSixState,
            TextEditingController?>(
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
}
