import 'package:flutter/material.dart';

import 'package:inventi_exam/utils/constants/colors.dart';

/// -- Bottom Sheet Themes
class InventiExamBottomSheetTheme {
  InventiExamBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: InventiExamColors.white,
    modalBackgroundColor: InventiExamColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
