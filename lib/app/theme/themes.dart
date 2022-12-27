import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

class AppTheme {
  AppTheme._();
  static final theme = ThemeData.dark().copyWith(
    primaryColor: AppColors.ebonyClay,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.black,
    indicatorColor: Colors.white,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.corduroy,
      secondary: AppColors.berylGreen,
      onSecondary: AppColors.berylGreen,
    ),
    textTheme: GoogleFonts.exo2TextTheme(),
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
