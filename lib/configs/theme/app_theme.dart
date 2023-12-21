import 'package:cajardilla/configs/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.midOrange,
    hintColor: AppColors.placeholderColor,
    textTheme: ThemeData.light().textTheme.copyWith(
          displayLarge: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.midOrange,
    ),
  );
}
