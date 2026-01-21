import 'package:e_store/common/widgets/vertical_image_text.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: TImages.shoeIcon,
            title: "Shoes",
            onTap: () {},
          );
        },
      ),
    );
  }
}