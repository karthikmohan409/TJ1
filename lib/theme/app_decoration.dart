import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueC => BoxDecoration(
        color: appTheme.blue9000c,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple90001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
// Gradient decorations
  static BoxDecoration get gradientDeepPurpleToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.86, 1.06),
          end: Alignment(0.3, 0.17),
          colors: [appTheme.deepPurple800, appTheme.indigo900],
        ),
      );
  static BoxDecoration get gradientDeepPurpleToIndigo900 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.86, 1.06),
          end: Alignment(0.3, 0.17),
          colors: [appTheme.deepPurple800, appTheme.indigo900],
        ),
      );
  static BoxDecoration get gradientDeepPurpleToIndigo9001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.4, 0.97),
          end: Alignment(0.4, 0.02),
          colors: [appTheme.deepPurple800, appTheme.indigo900],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineDeepPurple => BoxDecoration(
        border: Border.all(
          color: appTheme.deepPurple90001.withOpacity(0.3),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeeppurple90001 => BoxDecoration(
        color: appTheme.deepPurple90001.withOpacity(0.02),
        border: Border.all(
          color: appTheme.deepPurple90001.withOpacity(0.4),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        color: appTheme.indigo90001,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer2 => BoxDecoration(
        color: appTheme.lightGreen900,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer3 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get circleBorder63 => BorderRadius.circular(
        63.h,
      );
// Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBL40 => BorderRadius.vertical(
        bottom: Radius.circular(40.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder21 => BorderRadius.circular(
        21.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
}
