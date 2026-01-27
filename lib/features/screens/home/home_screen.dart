import 'package:e_store/common/widgets/grid_layout.dart';
import 'package:e_store/common/widgets/primary_header_container.dart';
import 'package:e_store/common/widgets/product_card_vertical.dart';
import 'package:e_store/common/widgets/search_container.dart';
import 'package:e_store/common/widgets/section_heading.dart';
import 'package:e_store/features/screens/home/widgets/promo_slider.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  const HomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Searchbar
                  const SearchContainer(text: TTexts.searchPlaceholder),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        SectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        // Categories
                        const HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace * 0.7),
              child: Column(
                children: [
                  // Promotional banners slider
                  const PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                      TImages.promoBanner4,
                      TImages.promoBanner5,
                      TImages.promoBanner6,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Heading
                  const SectionHeading(title: "Popular Products"),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Popular products
                  GridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
