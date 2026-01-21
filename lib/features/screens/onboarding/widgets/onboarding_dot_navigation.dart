import 'package:e_store/features/controllers/onboarding.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom:
          TDeviceUtils.getBottomNavigationBarHeight() +
          25 +
          TSizes.defaultSpace,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 9,
        ),
      ),
    );
  }
}
