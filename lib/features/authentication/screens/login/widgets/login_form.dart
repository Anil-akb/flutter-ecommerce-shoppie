import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppie/utils/constants/sizes.dart';
import 'package:shoppie/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
        child: Column(
          children: [
            // email address
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: STexts.email),
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: STexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields / 2,
            ),

            //Remeber me and forget password
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(STexts.rememberMe),
                  ],
                ),
                const SizedBox(
                  width: SSizes.spaceBtwItems + 10,

                  // sign in button
                ),
                //forget password
                TextButton(
                    onPressed: () {}, child: const Text(STexts.forgetPassword))
              ],
            ),
            const SizedBox(
              height: SSizes.spaceBtwItems,

              // sign in button
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(STexts.signIn),
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwItems,

              // sign in button
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(STexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
