import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_icon_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarTitleIconbutton extends StatelessWidget {
  AppbarTitleIconbutton({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 26.adaptSize,
          width: 26.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgClose,
          ),
        ),
      ),
    );
  }
}
