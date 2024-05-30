import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Home, Booknow, tf, Instagram, Store }
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSolarCalendarBold,
      activeIcon: ImageConstant.imgSolarCalendarBold,
      title: "lbl_book_now".tr,
      type: BottomBarEnum.Booknow,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgShare,
      activeIcon: ImageConstant.imgShare,
      title: "lbl_360".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavInstagram,
      activeIcon: ImageConstant.imgNavInstagram,
      title: "lbl_instagram".tr,
      type: BottomBarEnum.Instagram,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavStore,
      activeIcon: ImageConstant.imgNavStore,
      title: "lbl_store".tr,
      type: BottomBarEnum.Store,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray8000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -3,
            ),
          )
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    ),
                  ),
                )
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  color: theme.colorScheme.primary,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                )
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
