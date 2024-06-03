import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../iphone_14_15_pro_max_nine_page/iphone_14_15_pro_max_nine_page.dart';
import 'controller/iphone_14_15_pro_max_nine_tab_container_controller.dart';
import 'models/iphone_14_15_pro_max_nine_tab_container_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxNineTabContainerPage extends StatelessWidget {
  Iphone1415ProMaxNineTabContainerPage({Key? key})
      : super(
          key: key,
        );

  Iphone1415ProMaxNineTabContainerController controller = Get.put(
      Iphone1415ProMaxNineTabContainerController(
          Iphone1415ProMaxNineTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 48.v),
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
                SizedBox(height: 20.v),
                _buildTabview(),
                SizedBox(
                  height: 686.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      Iphone1415ProMaxNinePage(),
                      Iphone1415ProMaxNinePage()
                    ],
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 48.v,
      title: AppbarTitle(
        text: "lbl_book_now".tr,
        margin: EdgeInsets.only(left: 28.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
      height: 43.v,
      width: 375.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.deepPurple90001,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w500,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            21.h,
          ),
          border: Border.all(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            width: 1.h,
          ),
        ),
        dividerHeight: 0.0,
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMusic,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_badminton".tr,
                    ),
                  )
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer3.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionOnprimarycontainer,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "lbl_table_tennis".tr,
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
}
