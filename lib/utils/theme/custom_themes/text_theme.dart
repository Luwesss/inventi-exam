import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Text Themes
class InventiExamTextTheme {
  InventiExamTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 24 / 20,
      letterSpacing: 0.0015,
      color: InventiExamColors.white,
      textStyle: const TextStyle(
        textBaseline: TextBaseline.alphabetic,
      ),
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      height: 20 / 16,
      letterSpacing: 0.0015,
      color: InventiExamColors.white,
    ),
    labelMedium: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 16 / 12,
      letterSpacing: 0.004,
      color: InventiExamColors.white,
    ),
    labelSmall: GoogleFonts.manrope(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      height: 14 / 10,
      letterSpacing: 0.015,
      color: InventiExamColors.white,
      textStyle: const TextStyle(
        textBaseline: TextBaseline.alphabetic,
      ),
    ),
    bodySmall: GoogleFonts.manrope(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 16 / 12,
      letterSpacing: 0.004,
      color: InventiExamColors.white,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 18 / 14,
      letterSpacing: 0.0025,
      color: InventiExamColors.white,
    ),
  );
}
