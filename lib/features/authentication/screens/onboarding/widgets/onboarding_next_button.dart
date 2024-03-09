import 'package:flutter/material.dart';
import 'package:shoppie/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shoppie/utils/constants/colors.dart';
import 'package:shoppie/utils/constants/sizes.dart';
import 'package:shoppie/utils/device/device_utility.dart';
import 'package:shoppie/utils/helper/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      right: SSizes.defaultSpace + 3,
      bottom: SDeviceUtils.getBottomNavigationBarHeight() + 19,
      child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? SColors.primary : Colors.black),
          child: const Icon(Icons.arrow_forward_ios_sharp)),
    );
  }
}
