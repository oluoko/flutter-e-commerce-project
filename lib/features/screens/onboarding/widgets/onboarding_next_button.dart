import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/onboarding.dart';

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
