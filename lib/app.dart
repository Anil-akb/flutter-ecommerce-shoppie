import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppie/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shoppie/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
