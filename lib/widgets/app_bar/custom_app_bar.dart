import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style { bgFill_1, bgFill }

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 56.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 1.v,
          width: 394.h,
          margin: EdgeInsets.fromLTRB(20.5.h, 52.23.v, 15.5.h, 2.7700043.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
          ),
        );
      case Style.bgFill:
        return Container(
          height: 1.v,
          width: double.maxFinite,
          margin: EdgeInsets.only(
            top: 50.v,
            bottom: 5.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.black900.withOpacity(0.12),
          ),
        );
      default:
        return null;
    }
  }
}
