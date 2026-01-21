import 'package:flutter/material.dart';

import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'circular_container.dart';
import 'curved_edge_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: THelperFunctions.screenHeight() * 0.4,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  width: THelperFunctions.screenHeight() * 0.4,
                  height: THelperFunctions.screenHeight() * 0.4,
                  radius: THelperFunctions.screenHeight() * 0.4,
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  width: THelperFunctions.screenHeight() * 0.4,
                  height: THelperFunctions.screenHeight() * 0.4,
                  radius: THelperFunctions.screenHeight() * 0.4,
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
