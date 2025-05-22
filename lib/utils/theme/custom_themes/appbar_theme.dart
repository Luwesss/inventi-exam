import 'package:flutter/material.dart';

import 'package:inventi_exam/utils/constants/colors.dart';

/// -- App Bar Themes
class InventiExamAppBarTheme {
  InventiExamAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: InventiExamColors.neutral900, size: 24),
    actionsIconTheme:
        IconThemeData(color: InventiExamColors.neutral900, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: InventiExamColors.neutral900),
  );
}
