import 'package:flutter/material.dart';
import 'package:shoppie/utils/constants/colors.dart';
import 'package:shoppie/utils/constants/image_strings.dart';
import 'package:shoppie/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              image: AssetImage(SImages.google),
              width: SSizes.iconMd,
              height: SSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: SSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              image: AssetImage(SImages.facebook),
              width: SSizes.iconMd,
              height: SSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
