import 'package:flutter/material.dart';

import 'package:inventi_exam/utils/constants/colors.dart';

class CustomSnackBar {
  static void show(BuildContext context, String message, {Color backgroundColor = InventiExamColors.error}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
