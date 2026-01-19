import 'package:e_store/features/controllers/onboarding.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipToLastPage(),
        child: Text(
          "Skip",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: dark ? Colors.white : TColors.textPrimary),
        ),
      ),
    );
  }
}
