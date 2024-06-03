import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/iphone_14_15_pro_max_three_controller.dart';
import 'models/imageslider1_item_model.dart';
import 'widgets/imageslider1_item_widget.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxThreeScreen
    extends GetWidget<Iphone1415ProMaxThreeController> {
  const Iphone1415ProMaxThreeScreen({Key? key})
      : super(
          key: key,
        );

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 486.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      _buildImageSlider(),
                      CustomElevatedButton(
                        height: 35.v,
                        width: 67.h,
                        text: "lbl_skip".tr,
                        margin: EdgeInsets.only(
                          top: 29.v,
                          right: 32.h,
                        ),
                        buttonStyle: CustomButtonStyles.fillDeepPurple,
                        buttonTextStyle:
                            CustomTextStyles.bodyLargeDeeppurple90001,
                        alignment: Alignment.topRight,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 38.v),
                Container(
                  height: 11.v,
                  margin: EdgeInsets.only(left: 37.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 6,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: theme.colorScheme.primary.withOpacity(0.4),
                      dotHeight: 11.v,
                      dotWidth: 11.h,
                    ),
                  ),
                ),
                SizedBox(height: 39.v),
                Padding(
                  padding: EdgeInsets.only(left: 34.h),
                  child: Text(
                    "msg_multiple_sports".tr,
                    style: CustomTextStyles.headlineMedium28,
                  ),
                ),
                SizedBox(height: 9.v),
                Container(
                  width: 283.h,
                  margin: EdgeInsets.only(left: 34.h),
                  child: Text(
                    "msg_book_multiple_indoor".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.bodyLargeOnPrimaryContainer_5.copyWith(
                      height: 1.48,
                    ),
                  ),
                ),
                SizedBox(height: 55.v),
                CustomElevatedButton(
                  text: "lbl_continue".tr,
                  margin: EdgeInsets.symmetric(horizontal: 33.h),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  onPressed: () {
                    onTapContinue();
                  },
                  alignment: Alignment.center,
                ),
                SizedBox(height: 33.v),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      onTapTxtBack();
                    },
                    child: Text(
                      "lbl_back".tr,
                      style: CustomTextStyles.titleLargePrimary_1,
                    ),
                  ),
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageSlider() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 486.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount: controller.iphone1415ProMaxThreeModelObj.value
            .imageslider1ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Imageslider1ItemModel model = controller.iphone1415ProMaxThreeModelObj
              .value.imageslider1ItemList.value[index];
          return Imageslider1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Navigates to the iphone1415ProMaxFourScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxFourScreen,
    );
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapTxtBack() {
    Get.toNamed(
      AppRoutes.iphone1415ProMaxTwoScreen,
    );
  }
}
