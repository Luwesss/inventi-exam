import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Light & Dark Text Field Themes
class InventiExamTextFormFieldTheme {
  InventiExamTextFormFieldTheme._();

  /// -- Light Theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: InventiExamColors.neutral500,
    suffixIconColor: InventiExamColors.neutral500,
    labelStyle: const TextStyle()
        .copyWith(fontSize: 14, color: InventiExamColors.neutral300),
    hintStyle: const TextStyle()
        .copyWith(fontSize: 14, color: InventiExamColors.neutral500),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: InventiExamColors.neutral900),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: InventiExamColors.neutral300),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: InventiExamColors.neutral300),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: InventiExamColors.neutral300),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: InventiExamColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: InventiExamColors.error),
    ),
  );

  /// -- Dark Theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: InventiExamColors.neutral500,
    suffixIconColor: InventiExamColors.neutral500,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide:
          const BorderSide(width: 1, color: InventiExamColors.neutral500),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide:
          const BorderSide(width: 1, color: InventiExamColors.neutral500),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}
