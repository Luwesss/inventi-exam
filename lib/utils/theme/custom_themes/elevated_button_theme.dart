import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';

/// -- Elevated Button Themes
class InventiExamElevatedButtonTheme {
  InventiExamElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: const Size.fromHeight(InventiExamSizes.buttonHeight),
      foregroundColor: InventiExamColors.neutral50,
      backgroundColor: InventiExamColors.brandPrimary,
      disabledForegroundColor: InventiExamColors.neutral500,
      disabledBackgroundColor: InventiExamColors.neutral300,
      side: const BorderSide(color: InventiExamColors.brandPrimary),
      textStyle: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 18 / 14,
        letterSpacing: 0.0025,
        color: InventiExamColors.neutral50,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(InventiExamSizes.cornerRadius),
      ),
    ),
  );
}
