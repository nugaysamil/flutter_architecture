import 'package:architecture_template_v2/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_template_v2/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// Custom light theme for project design
final class CustomDarkTheme implements CustomTheme {
  @override
  // TODO: change the initiliaze themeData instead of computed
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        textTheme: const TextTheme(bodySmall: TextStyle(fontSize: 15)),
      );

  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();
}
