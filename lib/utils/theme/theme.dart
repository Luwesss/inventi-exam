import 'package:flutter/material.dart';

import 'package:inventi_exam/utils/theme/custom_themes/appbar_theme.dart';
import 'package:inventi_exam/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:inventi_exam/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:inventi_exam/utils/theme/custom_themes/chip_theme.dart';
import 'package:inventi_exam/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:inventi_exam/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:inventi_exam/utils/theme/custom_themes/text_field_theme.dart';
import 'package:inventi_exam/utils/theme/custom_themes/text_theme.dart';

class InventiExamAppTheme {
  InventiExamAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: InventiExamTextTheme.lightTextTheme,
    chipTheme: InventiExamChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: InventiExamAppBarTheme.lightAppBarTheme,
    checkboxTheme: InventiExamCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: InventiExamBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme:
        InventiExamElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme:
        InventiExamOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme:
        InventiExamTextFormFieldTheme.lightInputDecorationTheme,
  );
}
