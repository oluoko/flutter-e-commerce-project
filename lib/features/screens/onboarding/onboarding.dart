import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontally scrollable pages
          PageView(
            children: const [
              OnboardingPage(image: TImages.onboardingImage1, title: TTexts.onBoardingTitle1, subTitle: TTexts.onBoardingSubTitle1 ),
              OnboardingPage(image: TImages.onboardingImage2, title: TTexts.onBoardingTitle2, subTitle: TTexts.onBoardingSubTitle2 ),
              OnboardingPage(image: TImages.onboardingImage3, title: TTexts.onBoardingTitle3, subTitle: TTexts.onBoardingSubTitle3 ),
            ],
          ),

          // Skip Button
          OnBoardingSkip()
        ],
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: TDeviceUtils.getAppBarHeight(), right: TSizes.defaultSpace,child: TextButton(onPressed: (){}, child: const Text("Skip")));
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.7,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
