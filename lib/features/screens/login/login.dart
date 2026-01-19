import 'package:e_store/features/screens/login/widgets/login_form.dart';
import 'package:e_store/features/screens/login/widgets/login_header.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../common/widgets/form_divider.dart';
import '../../../common/widgets/social_buttons.dart';
import '../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              const LoginHeader(),

              const LoginForm(),

              // Divider
              const FormDivider(dividerText: TTexts.tOrSignInWith),

              const SizedBox(height: TSizes.spaceBtwSections),

              // Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
