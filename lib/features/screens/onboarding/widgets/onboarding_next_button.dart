import 'package:e_store/features/controllers/onboarding.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + TSizes.defaultSpace,
      child: ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(),
      style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: dark ? TColors.primary : TColors.black),
      child: const Icon(Iconsax.arrow_right_3),
    ),
    );
  }
}
