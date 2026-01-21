import 'package:e_store/features/screens/password_config/forgot_password.dart';
import 'package:e_store/features/screens/signup/signup.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';



class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.tRememberMe),
                  ],
                ),
                // Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: const Text(TTexts.tForgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(TTexts.tLogin),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.offAll(const SignupScreen()),
                child: const Text(TTexts.tCreateAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
