import 'package:e_store/common/widgets/primary_header_container.dart';
import 'package:e_store/common/widgets/search_container.dart';
import 'package:e_store/common/widgets/section_heading.dart';
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
          ],
        ),
      ),
    );
  }
}


