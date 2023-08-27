import 'package:celita/components/utils/theme/widget%20theme/text_theme.dart';
import 'package:flutter/material.dart';

class CEppTheme {
  static ThemeData lighTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: CEppTextTheme.lightTextTheme,
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: CEppTextTheme.darkTextTheme,
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()));
}
