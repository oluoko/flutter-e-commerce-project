import 'package:e_store/common/widgets/form_divider.dart';
import 'package:e_store/common/widgets/social_buttons.dart';
import 'package:e_store/features/screens/signup/widgets/signup_form.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.tSignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              // Register Form
              const SignupForm(),

              const SizedBox(height: TSizes.spaceBtwSections),

              // Divider
              FormDivider(dividerText: TTexts.tOrSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


