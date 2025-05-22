import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Light & Dark Chip Themes
class InventiExamChipTheme {
  InventiExamChipTheme._();

  /// -- Light Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: InventiExamColors.neutral500.withOpacity(0.4),
    labelStyle: const TextStyle(color: InventiExamColors.neutral900),
    selectedColor: InventiExamColors.inventiBlue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: InventiExamColors.white,
  );

  /// -- Dark Theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: InventiExamColors.neutral500,
    labelStyle: TextStyle(color: InventiExamColors.white),
    selectedColor: InventiExamColors.inventiBlue,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: InventiExamColors.white,
  );
}
