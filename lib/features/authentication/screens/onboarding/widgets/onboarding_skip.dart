import 'package:flutter/material.dart';
import 'package:shoppie/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shoppie/utils/constants/sizes.dart';
import 'package:shoppie/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtils.getAppBarHeight(),
      right: SSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
