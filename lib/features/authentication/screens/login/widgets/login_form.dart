import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inventi_exam/common/widgets/buttons/custom_filled_button.dart';
import 'package:inventi_exam/common/widgets/buttons/custom_text_button.dart';
import 'package:inventi_exam/common/widgets/input_fields/custom_text_field.dart';
import 'package:inventi_exam/common/widgets/spacing/custom_spacer.dart';
import 'package:inventi_exam/routes/routes.dart';
import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/text_strings.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _handleLogin(BuildContext context) {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    context.go(InventiExamRoutes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: emailController,
          borderColor: InventiExamColors.neutral300,
          label: LoginScreenTexts.emailFieldLabel,
          hint: LoginScreenTexts.emailFieldHint,
        ),
        CustomSpacer(),
        CustomTextField(
          controller: passwordController,
          borderColor: InventiExamColors.brandBase,
          label: LoginScreenTexts.passwordFieldLabel,
          hint: LoginScreenTexts.passwordFieldHint,
          isPassword: true,
        ),
        CustomSpacer(),
        Align(
          alignment: Alignment.centerRight,
          child: CustomTextButton(
            text: LoginScreenTexts.forgotPassword,
          ),
        ),
        CustomSpacer(),
        CustomFilledButton(
          text: LoginScreenTexts.login,
          onPressed: () => _handleLogin(context),
        ),
      ],
    );
  }
}