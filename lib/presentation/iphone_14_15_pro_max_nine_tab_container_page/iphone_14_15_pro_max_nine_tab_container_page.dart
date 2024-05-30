import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../iphone_14_15_pro_max_nine_page/iphone_14_15_pro_max_nine_page.dart';
import 'bloc/iphone_14_15_pro_max_nine_tab_container_bloc.dart';
import 'models/iphone_14_15_pro_max_nine_tab_container_model.dart'; // ignore_for_file: must_be_immutable

class Iphone1415ProMaxNineTabContainerPage extends StatefulWidget {
  const Iphone1415ProMaxNineTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxNineTabContainerPageState createState() =>
      Iphone1415ProMaxNineTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxNineTabContainerBloc>(
      create: (context) => Iphone1415ProMaxNineTabContainerBloc(
          Iphone1415ProMaxNineTabContainerState(
        iphone1415ProMaxNineTabContainerModelObj:
            Iphone1415ProMaxNineTabContainerModel(),
      ))
        ..add(Iphone1415ProMaxNineTabContainerInitialEvent()),
      child: Iphone1415ProMaxNineTabContainerPage(),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxNineTabContainerPageState
    extends State<Iphone1415ProMaxNineTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxNineTabContainerBloc,
        Iphone1415ProMaxNineTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: _buildAppBar(context),
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
                    SizedBox(height: 20.v),
                    _buildTabview(context),
                    SizedBox(
                      height: 686.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          Iphone1415ProMaxNinePage.builder(context),
                          Iphone1415ProMaxNinePage.builder(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      title: AppbarTitle(
        text: "lbl_book_now".tr,
        margin: EdgeInsets.only(left: 28.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 43.v,
      width: 375.h,
      child: TabBar(
        controller: tabviewController,
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
