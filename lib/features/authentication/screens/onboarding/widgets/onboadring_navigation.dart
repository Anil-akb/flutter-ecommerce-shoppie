import 'package:flutter/material.dart';
import 'package:shoppie/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shoppie/utils/constants/colors.dart';
import 'package:shoppie/utils/constants/sizes.dart';
import 'package:shoppie/utils/device/device_utility.dart';
import 'package:shoppie/utils/helper/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: SDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: SSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? SColors.light : SColors.dark,
            dotHeight: 6,
          ),
        ));
  }
}
