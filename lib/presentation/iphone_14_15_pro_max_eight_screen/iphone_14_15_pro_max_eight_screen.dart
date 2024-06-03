import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/iphone_14_15_pro_max_eight_controller.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxEightScreen
    extends GetWidget<Iphone1415ProMaxEightController> {
  const Iphone1415ProMaxEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurple90001,
        body: Container(
          width: 368.h,
          padding: EdgeInsets.symmetric(horizontal: 41.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgVectorPrimary112x112,
                height: 112.adaptSize,
                width: 112.adaptSize,
              ),
              SizedBox(height: 25.v),
              Container(
                width: 278.h,
                margin: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_account_has_been".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeOnPrimaryContainerBold
                      .copyWith(
                    height: 1.28,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
