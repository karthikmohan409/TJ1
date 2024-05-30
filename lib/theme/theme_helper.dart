import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.onPrimaryContainer.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onPrimaryContainer.withOpacity(1);
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onPrimaryContainer.withOpacity(1);
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: colorScheme.primary,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimaryContainer.withOpacity(0.25),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 18.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 26.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 10.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFFFC600),
    primaryContainer: Color(0XFF373737),
    errorContainer: Color(0XFF0093B3),
    onError: Color(0XFFFFA528),
    onErrorContainer: Color(0XFF0E0A16),
    onPrimary: Color(0XFF1E1E1E),
    onPrimaryContainer: Color(0XB2FFFFFF),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
// Bluec
  Color get blue9000c => Color(0X0C003D9A);
// BlueGray
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray800 => Color(0XFF443D60);
  Color get blueGray80001 => Color(0XFF453D61);
// BlueGrayc
  Color get blueGray8000c => Color(0X0C3A4355);
// Cyan
  Color get cyan5023 => Color(0X23D4FCFF);
// DeepOrange
  Color get deepOrangeA400 => Color(0XFFFF1616);
// DeepPurple
  Color get deepPurple800 => Color(0XFF41169C);
  Color get deepPurple900 => Color(0XFF3A228A);
  Color get deepPurple90001 => Color(0XFF392487);
// Gray
  Color get gray50 => Color(0XFFFBFBFB);
  Color get gray500 => Color(0XFFA7A7A7);
// Indigo
  Color get indigo900 => Color(0XFF323174);
  Color get indigo90001 => Color(0XFF001F64);
  Color get indigoA40028 => Color(0X284F56FF);
  Color get indigoA700 => Color(0XFF0540F2);
// LightGreen
  Color get lightGreen900 => Color(0XFF2D5F2E);
  Color get lightGreenA700 => Color(0XFF64C916);
// Lime
  Color get lime200 => Color(0XFFF6E19A);
  Color get lime500 => Color(0XFFC9E32B);
// Orange
  Color get orange700 => Color(0XFFFF7A00);
// Red
  Color get redA700 => Color(0XFFFF0000);
// White
  Color get whiteA700 => Color(0XFFFDFDFD);
// Yellow
  Color get yellow800 => Color(0XFFF79E1B);
}
