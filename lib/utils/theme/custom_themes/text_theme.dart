import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Light & Dark Text Themes
class InventiExamTextTheme {
  InventiExamTextTheme._();

  /// -- Light Theme
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 57.0,
        fontWeight: FontWeight.w700,
        height: 64 / 57,
        letterSpacing: -0.25,
        color: InventiExamColors.white,
      ),
    ),
    displayMedium: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 45.0,
        fontWeight: FontWeight.w700,
        height: 52 / 45,
        letterSpacing: 0,
        color: InventiExamColors.white,
      ),
    ),
    displaySmall: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 36.0,
        fontWeight: FontWeight.w700,
        height: 44 / 36,
        letterSpacing: 0,
        color: InventiExamColors.white,
      ),
    ),
    headlineLarge: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: FontWeight.w700,
        height: 40 / 32,
        letterSpacing: 0,
        color: InventiExamColors.white,
      ),
    ),
    headlineMedium: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        height: 36 / 28,
        letterSpacing: 0,
        color: InventiExamColors.white,
      ),
    ),
    headlineSmall: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        height: 32 / 24,
        letterSpacing: 0,
        color: InventiExamColors.white,
      ),
    ),
    titleLarge: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 28 / 22,
        letterSpacing: 0,
        color: InventiExamColors.white,
      ),
    ),
    titleMedium: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
        letterSpacing: 0.15,
        color: InventiExamColors.white,
      ),
    ),
    titleSmall: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        height: 20 / 14,
        letterSpacing: 0.1,
        color: InventiExamColors.white,
      ),
    ),
    labelLarge: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        height: 20 / 14,
        letterSpacing: 0.5,
        color: InventiExamColors.white,
      ),
    ),
    labelMedium: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w700,
        height: 16 / 12,
        letterSpacing: 0.5,
        color: InventiExamColors.white,
      ),
    ),
    labelSmall: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 11.0,
        fontWeight: FontWeight.w600,
        height: 16 / 11,
        letterSpacing: 0.5,
        color: InventiExamColors.white,
      ),
    ),
    bodyLarge: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
        letterSpacing: 0.2,
        color: InventiExamColors.white,
      ),
    ),
    bodyMedium: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        height: 20 / 14,
        letterSpacing: 0.2,
        color: InventiExamColors.white,
      ),
    ),
    bodySmall: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w700,
        height: 16 / 12,
        letterSpacing: 0.4,
        color: InventiExamColors.white,
      ),
    ),
  );

  /// -- Dark Theme
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 57.0,
        fontWeight: FontWeight.w700,
        height: 64 / 57,
        letterSpacing: -0.25,
        color: InventiExamColors.neutral900,
      ),
    ),
    displayMedium: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 45.0,
        fontWeight: FontWeight.w700,
        height: 52 / 45,
        letterSpacing: 0,
        color: InventiExamColors.neutral900,
      ),
    ),
    displaySmall: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 36.0,
        fontWeight: FontWeight.w700,
        height: 44 / 36,
        letterSpacing: 0,
        color: InventiExamColors.neutral900,
      ),
    ),
    headlineLarge: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: FontWeight.w700,
        height: 40 / 32,
        letterSpacing: 0,
        color: InventiExamColors.neutral900,
      ),
    ),
    headlineMedium: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        height: 36 / 28,
        letterSpacing: 0,
        color: InventiExamColors.neutral900,
      ),
    ),
    headlineSmall: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        height: 32 / 24,
        letterSpacing: 0,
        color: InventiExamColors.neutral900,
      ),
    ),
    titleLarge: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 28 / 22,
        letterSpacing: 0,
        color: InventiExamColors.neutral900,
      ),
    ),
    titleMedium: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
        letterSpacing: 0.15,
        color: InventiExamColors.neutral900,
      ),
    ),
    titleSmall: GoogleFonts.merriweather(
      textStyle: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        height: 20 / 14,
        letterSpacing: 0.1,
        color: InventiExamColors.neutral900,
      ),
    ),
    labelLarge: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        height: 20 / 14,
        letterSpacing: 0.5,
        color: InventiExamColors.neutral900,
      ),
    ),
    labelMedium: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w700,
        height: 16 / 12,
        letterSpacing: 0.5,
        color: InventiExamColors.neutral900,
      ),
    ),
    labelSmall: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 11.0,
        fontWeight: FontWeight.w600,
        height: 16 / 11,
        letterSpacing: 0.5,
        color: InventiExamColors.neutral900,
      ),
    ),
    bodyLarge: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
        letterSpacing: 0.2,
        color: InventiExamColors.neutral900,
      ),
    ),
    bodyMedium: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        height: 20 / 14,
        letterSpacing: 0.2,
        color: InventiExamColors.neutral900,
      ),
    ),
    bodySmall: GoogleFonts.roboto(
      textStyle: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w700,
        height: 16 / 12,
        letterSpacing: 0.4,
        color: InventiExamColors.neutral900,
      ),
    ),
  );
}
