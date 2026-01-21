import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/text_strings.dart';
import '../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onPressed,
    this.altAction,
    this.closeSuccessScreen,
  });

  final String image, title, subTitle;
  final VoidCallback? onPressed, altAction, closeSuccessScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: closeSuccessScreen != null
          ? AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: closeSuccessScreen,
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      )
          : null,
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.7,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}