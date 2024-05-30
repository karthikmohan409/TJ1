import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/calendar_two_bloc.dart';
import 'models/calendar_two_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CalendarTwoScreen extends StatelessWidget {
  CalendarTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarTwoBloc>(
      create: (context) => CalendarTwoBloc(CalendarTwoState(
        calendarTwoModelObj: CalendarTwoModel(),
      ))
        ..add(CalendarTwoInitialEvent()),
      child: CalendarTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbarSection(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 21.v,
              ),
              child: Column(
                children: [
                  _buildCalendarDetailsSection(context),
                  SizedBox(height: 27.v),
                  _buildCardInformationSection(context),
                  SizedBox(height: 27.v),
                  _buildCountryRegionSection(context),
                  SizedBox(height: 27.v),
                  _buildSaveCardCheckbox(context),
                  SizedBox(height: 46.v),
                  CustomElevatedButton(
                    text: "lbl_pay_30".tr,
                    margin: EdgeInsets.only(
                      left: 9.h,
                      right: 8.h,
                    ),
                    buttonStyle: CustomButtonStyles.fillDeepPurpleTL30,
                    buttonTextStyle:
                        CustomTextStyles.titleLargeOnPrimaryContainer_1,
                    onPressed: () {
                      onTapPay30(context);
                    },
                  ),
                  SizedBox(height: 21.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtBack(context);
                    },
                    child: Text(
                      "lbl_back".tr,
                      style: CustomTextStyles.titleLargeDeeppurple90001,
                    ),
                  ),
                  SizedBox(height: 9.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbarSection(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              right: 25.h,
            ),
            child: Row(
              children: [
                AppbarSubtitle(
                  text: "lbl_payment".tr,
                  margin: EdgeInsets.only(top: 1.v),
                ),
                AppbarTitleIconbutton(
                  imagePath: ImageConstant.imgClose,
                  margin: EdgeInsets.only(
                    left: 247.h,
                    bottom: 3.v,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.black900.withOpacity(0.12),
            ),
          )
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildCalendarDetailsSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillBlueC.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder13,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendarBlueGray800,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  onTap: () {
                    onTapImgCalendarone(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_21_mar_2024".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                Text(
                  "lbl_30".tr,
                  style: CustomTextStyles.titleMediumBluegray800,
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgF7SportscourtFillBlueGray80001,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "msg_badminton_court".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.blueGray80001,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              right: 34.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClockBlueGray80001,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "msg_08_00_am_09_00".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                Text(
                  "lbl_1hr".tr,
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardInformationSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_card_information".tr,
              style: CustomTextStyles.titleMediumBlack900_2,
            ),
          ),
          SizedBox(height: 11.v),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(left: 1.h),
            color: appTheme.deepPurple90001.withOpacity(0.02),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.deepPurple90001.withOpacity(0.4),
                width: 1.h,
              ),
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 111.v,
              width: 376.h,
              decoration: AppDecoration.outlineDeeppurple90001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        bottom: 18.v,
                      ),
                      child: Text(
                        "lbl_mm_yy".tr,
                        style: CustomTextStyles.bodyLargeBlack900_3,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 131.h,
                        bottom: 18.v,
                      ),
                      child: Text(
                        "lbl_cvc".tr,
                        style: CustomTextStyles.bodyLargeBlack900_3,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 55.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: appTheme.deepPurple90001.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 17.v),
                    child: BlocSelector<CalendarTwoBloc, CalendarTwoState,
                        TextEditingController?>(
                      selector: (state) => state.cardNumberController,
                      builder: (context, cardNumberController) {
                        return CustomTextFormField(
                          width: 375.h,
                          controller: cardNumberController,
                          hintText: "lbl_card_number".tr,
                          hintStyle: CustomTextStyles.bodyLargeBlack900_3,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.number,
                          alignment: Alignment.topCenter,
                          validator: (value) {
                            if (!isNumeric(value)) {
                              return "err_msg_please_enter_valid_number".tr;
                            }
                            return null;
                          },
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 22.h),
                          borderDecoration:
                              TextFormFieldStyleHelper.underLineDeepPurple,
                          filled: false,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCountryRegionSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_country_or_region".tr,
              style: CustomTextStyles.titleMediumBlack900_2,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.outlineDeeppurple90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: BlocSelector<CalendarTwoBloc, CalendarTwoState,
                      CalendarTwoModel?>(
                    selector: (state) => state.calendarTwoModelObj,
                    builder: (context, calendarTwoModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.symmetric(horizontal: 23.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 10.v,
                            width: 13.h,
                          ),
                        ),
                        hintText: "lbl_canada".tr,
                        items: calendarTwoModelObj?.dropdownItemList ?? [],
                      );
                    },
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Text(
                    "lbl_zip".tr,
                    style: CustomTextStyles.bodyLargeBlack900_3,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveCardCheckbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 3.h,
          right: 66.h,
        ),
        child: BlocSelector<CalendarTwoBloc, CalendarTwoState, bool?>(
          selector: (state) => state.saveCardCheckbox,
          builder: (context, saveCardCheckbox) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_save_this_card_for".tr,
              value: saveCardCheckbox,
              textStyle: CustomTextStyles.bodyLargeBlack900_2,
              onChange: (value) {
                context
                    .read<CalendarTwoBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              },
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the calendarThreeScreen when the action is triggered.
  onTapImgCalendarone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarThreeScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxEightScreen when the action is triggered.
  onTapPay30(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxEightScreen,
    );
  }

  /// Navigates to the calendarOneScreen when the action is triggered.
  onTapTxtBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarOneScreen,
    );
  }
}
