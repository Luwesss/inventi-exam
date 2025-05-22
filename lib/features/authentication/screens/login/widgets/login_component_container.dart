import 'package:flutter/material.dart';

import 'package:inventi_exam/common/widgets/buttons/custom_text_button.dart';
import 'package:inventi_exam/common/widgets/spacing/custom_spacer.dart';
import 'package:inventi_exam/features/authentication/screens/login/widgets/login_form.dart';
import 'package:inventi_exam/utils/constants/image_strings.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';
import 'package:inventi_exam/utils/constants/text_strings.dart';

class LoginComponentContainer extends StatelessWidget {
  const LoginComponentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: InventiExamSizes.sideMargins),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            LoginScreenTexts.loginTitle,
            style: Theme.of(context).textTheme.titleLarge!,
          ),
          CustomSpacer(),
          LoginForm(),
          CustomSpacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  LoginScreenTexts.notSubscriber,
                  style: Theme.of(context).textTheme.bodyMedium!,
                ),
              ),
              SizedBox(
                width: InventiExamSizes.smallSpacing,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomTextButton(
                  text: LoginScreenTexts.subscribeHere,
                ),
              ),
            ],
          ),
          CustomSpacer(),
          Image.asset(
            InventiExamImages.poweredByInventiLogo,
            width: 113,
            height: 43.56,
          ),
        ],
      ),
    );
  }
}
