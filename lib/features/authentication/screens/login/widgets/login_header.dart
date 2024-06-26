import 'package:flutter/material.dart';
import 'package:shoppie/utils/constants/image_strings.dart';
import 'package:shoppie/utils/constants/sizes.dart';
import 'package:shoppie/utils/constants/text_strings.dart';
import 'package:shoppie/utils/helper/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image:
                AssetImage(dark ? SImages.lightAppLogo : SImages.darkAppLogo)),
        Text(
          STexts.loginTittle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: SSizes.sm,
        ),
        Text(
          STexts.loginSubTittle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
