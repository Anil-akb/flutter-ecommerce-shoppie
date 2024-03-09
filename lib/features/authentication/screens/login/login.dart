import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppie/common/style/spacing_styles.dart';
import 'package:shoppie/common/widgets/login_signup/form_divider.dart';
import 'package:shoppie/common/widgets/login_signup/social_buttons.dart';
import 'package:shoppie/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shoppie/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shoppie/utils/constants/sizes.dart';
import 'package:shoppie/utils/constants/text_strings.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const LoginHeader(),

              const LoginForm(),
              FormDivider(dividerText: STexts.orSignInWith.capitalize!),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              // Footer
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
