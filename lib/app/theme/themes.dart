import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

class AppTheme {
  AppTheme._();
  static final theme = ThemeData.dark().copyWith(
    useMaterial3: true,
    primaryColor: AppColors.ebonyClay,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.corduroy,
      secondary: AppColors.berylGreen,
      onSecondary: AppColors.berylGreen,
    ),
    textTheme: GoogleFonts.exo2TextTheme().copyWith(
      displayLarge: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: const TextStyle(
        color: AppColors.aquaHaze,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.aquaHaze,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.aquaHaze,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.aquaHaze,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.aquaHaze,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.aquaHaze,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.aquaHaze,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      fillColor: AppColors.aquaHaze,
      filled: true,
      hintStyle: TextStyle(
        color: AppColors.osloGray,
      ),
    ),
  );
}
