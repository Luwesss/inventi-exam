import 'package:flutter/material.dart';
import 'package:inventi_exam/features/authentication/screens/login/widgets/login_background_image.dart';
import 'package:inventi_exam/features/authentication/screens/login/widgets/login_background_overlay.dart';
import 'package:inventi_exam/features/authentication/screens/login/widgets/login_component_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LoginBackgroundImage(),
          LoginBackgroundOverlay(),
          LoginComponentContainer(),
        ],
      ),
    );
  }
}
