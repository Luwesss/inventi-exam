import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Light & Dark Outlined Button Themes
class InventiExamOutlinedButtonTheme {
  InventiExamOutlinedButtonTheme._();

  /// -- Light Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: InventiExamColors.neutral900,
      side: const BorderSide(color: InventiExamColors.inventiBlue),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
          fontSize: 16,
          color: InventiExamColors.neutral900,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  /// -- Dark Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: InventiExamColors.white,
      side: const BorderSide(color: InventiExamColors.inventiBlue),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
          fontSize: 16,
          color: InventiExamColors.white,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
