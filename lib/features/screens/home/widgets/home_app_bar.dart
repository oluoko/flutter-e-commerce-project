import 'package:e_store/common/widgets/cart_counter_icon.dart';
import 'package:e_store/common/widgets/custom_app_bar.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () {}, iconColor: TColors.white,),
      ],
    );
  }
}