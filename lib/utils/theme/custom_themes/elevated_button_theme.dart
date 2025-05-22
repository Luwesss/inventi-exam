import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Light & Dark Elevated Button Themes
class InventiExamElevatedButtonTheme {
  InventiExamElevatedButtonTheme._();

  /// -- Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: InventiExamColors.white,
      backgroundColor: InventiExamColors.inventiBlue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: InventiExamColors.inventiBlue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16,
          color: InventiExamColors.white,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  /// -- Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: InventiExamColors.white,
      backgroundColor: InventiExamColors.inventiBlue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: InventiExamColors.inventiBlue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16,
          color: InventiExamColors.white,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
