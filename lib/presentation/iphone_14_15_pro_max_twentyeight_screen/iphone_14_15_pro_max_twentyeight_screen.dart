import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/iphone_14_15_pro_max_twentyeight_bloc.dart';
import 'models/iphone_14_15_pro_max_twentyeight_model.dart';

class Iphone1415ProMaxTwentyeightScreen extends StatelessWidget {
  const Iphone1415ProMaxTwentyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxTwentyeightBloc>(
      create: (context) =>
          Iphone1415ProMaxTwentyeightBloc(Iphone1415ProMaxTwentyeightState(
        iphone1415ProMaxTwentyeightModelObj: Iphone1415ProMaxTwentyeightModel(),
      ))
            ..add(Iphone1415ProMaxTwentyeightInitialEvent()),
      child: Iphone1415ProMaxTwentyeightScreen(),
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
                SizedBox(height: 67.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 99.v),
                      padding: EdgeInsets.symmetric(horizontal: 18.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: Text(
                              "msg_register_new_account".tr,
                              style: CustomTextStyles.headlineMedium28,
                            ),
                          ),
                          SizedBox(height: 35.v),
                          Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_tj_s_sports_club".tr,
                                  style: CustomTextStyles
                                      .titleLargeOnPrimaryContainer,
                                ),
                                SizedBox(height: 15.v),
                                SizedBox(
                                  width: 378.h,
                                  child: Text(
                                    "msg_please_read_these2".tr,
                                    maxLines: 56,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyLargeOnPrimaryContainer16
                                        .copyWith(
                                      height: 1.48,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.v),
                                _buildPrivacyPolicyAgreement(context),
                                SizedBox(height: 98.v),
                                _buildActionButtons(context)
                              ],
                            ),
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
    );
  }

  /// Section Widget
  Widget _buildPrivacyPolicyAgreement(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 85.h),
      child: BlocSelector<Iphone1415ProMaxTwentyeightBloc,
          Iphone1415ProMaxTwentyeightState, bool?>(
        selector: (state) => state.privacyPolicyAgreement,
        builder: (context, privacyPolicyAgreement) {
          return CustomCheckboxButton(
            text: "msg_i_agree_to_the_privacy".tr,
            value: privacyPolicyAgreement,
            textStyle: CustomTextStyles.titleMediumPrimary,
            onChange: (value) {
              context
                  .read<Iphone1415ProMaxTwentyeightBloc>()
                  .add(ChangeCheckBoxEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildActionButtons(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 18.h,
          right: 15.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomOutlinedButton(
                height: 60.v,
                text: "lbl_decline".tr,
                margin: EdgeInsets.only(right: 11.h),
                buttonStyle: CustomButtonStyles.outlinePrimaryTL30,
                buttonTextStyle: CustomTextStyles.titleLargePrimary_1,
              ),
            ),
            Expanded(
              child: CustomElevatedButton(
                text: "lbl_accept".tr,
                margin: EdgeInsets.only(left: 11.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
