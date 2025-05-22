import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Light & Dark Bottom Sheet Themes
class InventiExamBottomSheetTheme {
  InventiExamBottomSheetTheme._();

  /// -- Light Theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: InventiExamColors.white,
    modalBackgroundColor: InventiExamColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  /// -- Dark Theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: InventiExamColors.neutral900,
    modalBackgroundColor: InventiExamColors.neutral900,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
