import 'package:flutter/material.dart';
import 'package:myapp/themes/icons_theme_data.dart';
import 'package:myapp/themes/text_theme_data.dart';


class AppThemeConstant {
// Light Material Theme
  ThemeData light = ThemeData(
      colorSchemeSeed: Colors.teal.shade700,
      useMaterial3: true,
      brightness: Brightness.light,
      textTheme: AppTextThemeConstants().textLightThemeData,
      primaryColorLight: Colors.black,
      primaryIconTheme: AppIconsThemeConstants().lightIconTheme);

// Dark Material Theme
  ThemeData dark = ThemeData(
      colorSchemeSeed: Colors.teal.shade700,
      useMaterial3: true,
      brightness: Brightness.dark,
      textTheme: AppTextThemeConstants().textDarkThemeData,
      primaryColorLight: Colors.white,
      scaffoldBackgroundColor: Colors.grey.shade900,
      appBarTheme: AppBarTheme(backgroundColor: Colors.grey.shade900),
      primaryIconTheme: AppIconsThemeConstants().darkIconTheme);
}
