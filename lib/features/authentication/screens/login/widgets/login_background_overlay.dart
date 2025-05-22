import 'package:flutter/material.dart';

import 'package:inventi_exam/utils/constants/colors.dart';

class LoginBackgroundOverlay extends StatelessWidget {
  const LoginBackgroundOverlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: InventiExamColors.neutral900B5,
      ),
    );
  }
}
