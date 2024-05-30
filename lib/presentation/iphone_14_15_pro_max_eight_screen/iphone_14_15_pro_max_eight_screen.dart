import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/iphone_14_15_pro_max_eight_bloc.dart';
import 'models/iphone_14_15_pro_max_eight_model.dart';

class Iphone1415ProMaxEightScreen extends StatelessWidget {
  const Iphone1415ProMaxEightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxEightBloc>(
      create: (context) => Iphone1415ProMaxEightBloc(Iphone1415ProMaxEightState(
        iphone1415ProMaxEightModelObj: Iphone1415ProMaxEightModel(),
      ))
        ..add(Iphone1415ProMaxEightInitialEvent()),
      child: Iphone1415ProMaxEightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxEightBloc, Iphone1415ProMaxEightState>(
      builder: (context, state) {
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
      },
    );
  }
}
