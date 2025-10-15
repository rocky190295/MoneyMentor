// FILE: lib/utils/theme.dart
import 'package:flutter/material.dart';

/// Theme utilities for MoneyMentor.
/// Brand colors:
/// - Teal (#00897B)
/// - Green (#43A047)
/// - White (#FFFFFF)
/// - Gray (#757575)
class ThemeUtils {
  static const Color teal = Color(0xFF00897B);
  static const Color green = Color(0xFF43A047);
  static const Color gray = Color(0xFF757575);

  // temporary static theme mode; replace with provider-backed value
  static ThemeMode themeMode = ThemeMode.system;

  static ThemeData buildLightTheme() {
    return ThemeData(
      primaryColor: teal,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(
        secondary: green,
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: teal,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: green,
      ),
    );
  }

  static ThemeData buildDarkTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: teal,
      colorScheme: ThemeData.dark().colorScheme.copyWith(secondary: green),
      appBarTheme: const AppBarTheme(
        backgroundColor: teal,
      ),
    );
  }
}

/// Next Steps:
/// - Hook ThemeUtils.themeMode to persistent settings (shared_preferences or secure storage)
/// - Provide brand typography (Inter) and accessibility sizes.

