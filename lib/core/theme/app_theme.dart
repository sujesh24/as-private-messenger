import 'package:as_private_messenger/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.scaffoldBackground,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.accent,
      secondary: AppColors.accentLight,
      surface: AppColors.primaryCard,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: AppColors.primaryText),
      titleTextStyle: TextStyle(
        color: AppColors.primaryText,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),

    cardColor: AppColors.primaryCard,

    dividerColor: AppColors.divider,

    iconTheme: const IconThemeData(color: AppColors.icon),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.primaryText,
        fontWeight: FontWeight.bold,
      ),

      titleLarge: TextStyle(
        color: AppColors.primaryText,
        fontWeight: FontWeight.w600,
      ),

      bodyLarge: TextStyle(color: AppColors.primaryText),

      bodyMedium: TextStyle(color: AppColors.secondaryText),

      bodySmall: TextStyle(color: AppColors.hintText),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.secondaryCard,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.accent, width: 1.5),
      ),

      hintStyle: const TextStyle(color: AppColors.hintText),
    ),
  );
}
