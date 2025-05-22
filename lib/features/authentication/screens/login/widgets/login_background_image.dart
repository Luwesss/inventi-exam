import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/image_strings.dart';

class LoginBackgroundImage extends StatelessWidget {
  const LoginBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        InventiExamImages.loginBackground,
        fit: BoxFit.cover,
      ),
    );
  }
}