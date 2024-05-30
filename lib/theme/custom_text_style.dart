import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get gTWalsheimPro {
    return copyWith(
      fontFamily: 'GT Walsheim Pro',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack90016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack90016_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
      );
  static get bodyLargeBlack900_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_3 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get bodyLargeBlack900_4 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get bodyLargeBlack900_5 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get bodyLargeBluegray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 16.fSize,
      );
  static get bodyLargeDeeppurple90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepPurple90001,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
        fontSize: 16.fSize,
      );
  static get bodyLargeOnPrimaryContainer16 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargeOnPrimaryContainer16_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
        fontSize: 16.fSize,
      );
  static get bodyLargeOnPrimaryContainer16_2 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeOnPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeOnPrimaryContainer_2 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.9),
      );
  static get bodyLargeOnPrimaryContainer_3 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.65),
      );
  static get bodyLargeOnPrimaryContainer_4 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
      );
  static get bodyLargeOnPrimaryContainer_5 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
      );
  static get bodyLargeOnPrimaryContainer_6 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeOnPrimaryContainer_7 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargeOnPrimaryContainer_8 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.5),
      );
  static get bodyLargePoppinsBlack900 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001.withOpacity(0.8),
        fontWeight: FontWeight.w300,
      );
// G text style
  static get gTWalsheimProDeeporangeA400 => TextStyle(
        color: appTheme.deepOrangeA400,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).gTWalsheimPro;
  static get gTWalsheimProLime500 => TextStyle(
        color: appTheme.lime500,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).gTWalsheimPro;
  static get gTWalsheimProOnError => TextStyle(
        color: theme.colorScheme.onError,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).gTWalsheimPro;
  static get gTWalsheimProOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).gTWalsheimPro;
  static get gTWalsheimProOnPrimaryContainerBold => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).gTWalsheimPro;
  static get gTWalsheimProOnPrimaryContainerMedium => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).gTWalsheimPro;
  static get gTWalsheimProOnPrimaryContainerRegular => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).gTWalsheimPro;
  static get gTWalsheimProPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).gTWalsheimPro;
  static get gTWalsheimProPrimaryBold => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).gTWalsheimPro;
// Headline text style
  static get headlineMedium28 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
      );
  static get headlineMediumMedium => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
// S text style
  static get sFProTextOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).sFProText;
// Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeDeeppurple90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurple90001,
      );
  static get titleLargeLime200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lime200,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainerBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainerRegular =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90019 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDeeppurple90001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurple90001,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}
