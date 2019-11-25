import 'package:flutter/material.dart';

enum ThemeKeys { LIGHT, DARK }

class MyTheme {
    static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey,
    brightness: Brightness.dark,
  );

  static ThemeData getThemeFromKey(ThemeKeys themeKey) {
    switch (themeKey) {
      case ThemeKeys.LIGHT:
        return lightTheme;
      case ThemeKeys.DARK:
        return darkTheme;
      // case MyThemeKeys.DARKER:
      //   return darkerTheme;
      default:
        return lightTheme;
    }
  }

}