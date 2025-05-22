import 'package:flutter/material.dart';
import 'package:inventi_exam/common/widgets/buttons/custom_filled_button.dart';
import 'package:inventi_exam/common/widgets/buttons/custom_text_button.dart';
import 'package:inventi_exam/common/widgets/input_fields/custom_text_field.dart';
import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login Screen',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CustomTextField(
              controller: controller,
              borderColor: InventiExamColors.brandBase,
              label: LoginScreenTexts.emailFieldLabel,
              hint: LoginScreenTexts.emailFieldHint,
              isPassword: true,
            ),
          ),
          CustomTextButton(
            text: LoginScreenTexts.forgotPassword,
          ),
          CustomFilledButton(
            text: LoginScreenTexts.login,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
