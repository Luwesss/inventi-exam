import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Light & Dark Checkbox Themes
class InventiExamCheckboxTheme {
  InventiExamCheckboxTheme._();

  /// -- Light Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return InventiExamColors.white;
        } else {
          return InventiExamColors.neutral900;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return InventiExamColors.inventiBlue;
        } else {
          return Colors.transparent;
        }
      }));

  /// -- Dark Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return InventiExamColors.white;
        } else {
          return InventiExamColors.neutral900;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return InventiExamColors.inventiBlue;
        } else {
          return Colors.transparent;
        }
      }));
}
