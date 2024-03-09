import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppie/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shoppie/features/authentication/screens/onboarding/widgets/onboadring_navigation.dart';
import 'package:shoppie/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:shoppie/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shoppie/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shoppie/utils/constants/image_strings.dart';
import 'package:shoppie/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: SImages.onBoarding1,
                  title: STexts.onBoardingTitle1,
                  subTitle: STexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: SImages.onBoarding2,
                  title: STexts.onBoardingTitle2,
                  subTitle: STexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: SImages.onBoarding3,
                  title: STexts.onBoardingTitle3,
                  subTitle: STexts.onBoardingSubTitle3)
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
