import 'package:flutter/material.dart';

import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Chip Themes
class InventiExamChipTheme {
  InventiExamChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: InventiExamColors.neutral500.withOpacity(0.4),
    labelStyle: const TextStyle(color: InventiExamColors.neutral900),
    selectedColor: InventiExamColors.inventiBlue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: InventiExamColors.white,
  );
}
