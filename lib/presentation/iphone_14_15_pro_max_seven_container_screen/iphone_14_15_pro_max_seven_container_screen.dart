import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../iphone_14_15_pro_max_nine_tab_container_page/iphone_14_15_pro_max_nine_tab_container_page.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../iphone_14_15_pro_max_sixteen_page/iphone_14_15_pro_max_sixteen_page.dart';
import 'bloc/iphone_14_15_pro_max_seven_container_bloc.dart';
import 'models/iphone_14_15_pro_max_seven_container_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSevenContainerScreen extends StatelessWidget {
  Iphone1415ProMaxSevenContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxSevenContainerBloc>(
      create: (context) => Iphone1415ProMaxSevenContainerBloc(
          Iphone1415ProMaxSevenContainerState(
        iphone1415ProMaxSevenContainerModelObj:
            Iphone1415ProMaxSevenContainerModel(),
      ))
        ..add(Iphone1415ProMaxSevenContainerInitialEvent()),
      child: Iphone1415ProMaxSevenContainerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxSevenContainerBloc,
        Iphone1415ProMaxSevenContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.86, 1.06),
                  end: Alignment(0.3, 0.17),
                  colors: [appTheme.deepPurple800, appTheme.indigo900],
                ),
              ),
              child: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.iphone1415ProMaxSevenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                  pageBuilder: (ctx, ani, ani1) =>
                      getCurrentPage(context, routeSetting.name!),
                  transitionDuration: Duration(seconds: 0),
                ),
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone1415ProMaxSevenPage;
      case BottomBarEnum.Booknow:
        return AppRoutes.iphone1415ProMaxNineTabContainerPage;
      case BottomBarEnum.tf:
        return AppRoutes.iphone1415ProMaxSixteenPage;
      case BottomBarEnum.Instagram:
        return "/";
      case BottomBarEnum.Store:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.iphone1415ProMaxSevenPage:
        return Iphone1415ProMaxSevenPage.builder(context);
      case AppRoutes.iphone1415ProMaxNineTabContainerPage:
        return Iphone1415ProMaxNineTabContainerPage.builder(context);
      case AppRoutes.iphone1415ProMaxSixteenPage:
        return Iphone1415ProMaxSixteenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
