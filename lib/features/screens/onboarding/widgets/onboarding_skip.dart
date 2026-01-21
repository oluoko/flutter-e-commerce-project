import 'package:e_store/features/controllers/onboarding.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipToLoginScreen(),
        child: Text(
          "Skip",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: dark ? Colors.white : TColors.textPrimary),
        ),
      ),
    );
  }
}
