import 'package:e_store/common/widgets/brand_showcase.dart';
import 'package:e_store/common/widgets/grid_layout.dart';
import 'package:e_store/common/widgets/product_card_vertical.dart';
import 'package:e_store/common/widgets/section_heading.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              BrandShowcase(
                images: [
                  TImages.productImage4,
                  TImages.productImage8,
                  TImages.productImage12,
                ],
              ),
              BrandShowcase(
                images: [
                  TImages.productImage5,
                  TImages.productImage10,
                  TImages.productImage15,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Products
              SectionHeading(title: "You might like", onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
