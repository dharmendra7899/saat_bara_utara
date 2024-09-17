import 'package:flutter/material.dart';

import 'app_palette.dart';

part 'widget_default/app_bar_theme.dart';

part 'widget_default/input_decoration_theme.dart';

part 'widget_default/text_theme.dart';
part 'widget_default/check_box_theme.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark();

  static final lightThemeMode = ThemeData(
    fontFamily: 'Montserrat',
    primaryColor: AppPaletteLight.primary,
    useMaterial3: true,
    scaffoldBackgroundColor: AppPaletteLight.background,
    hintColor: AppPaletteLight.secondaryVariant,
    shadowColor: Colors.grey.withOpacity(0.5),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppPaletteLight.primary,
        onPrimary: AppPaletteLight.background,
        secondary: AppPaletteLight.secondary,
        onSecondary: AppPaletteLight.primaryVariant,
        error: AppPaletteLight.primary,
        onError: AppPaletteLight.background,
        surface: AppPaletteLight.background,
        onSurface: AppPaletteLight.primaryVariant),
    inputDecorationTheme: _inputDecorationTheme,
    textTheme: _textTheme,
    appBarTheme: _appBarTheme,
    checkboxTheme:_checkBoxTheme
  );
}
