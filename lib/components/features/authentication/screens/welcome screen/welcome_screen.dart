import 'package:celita/components/constants/image_strings.dart';
import 'package:celita/components/constants/sizes.dart';
import 'package:celita/components/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(CEppDefaultSize),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image(image: AssetImage(CEppWelcome1)),
                Text(CEppWelcomeHeading1,
                    style: Theme.of(context).textTheme.displayMedium),
                Text(CEppWelcomeSubheading1,
                    style: Theme.of(context).textTheme.displayLarge),
                Text(CEppWelcomeSubtitle1,
                    style: Theme.of(context).textTheme.displaySmall),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                      padding: const EdgeInsets.symmetric(vertical: CEppButtonSize),
                      backgroundColor: CEppSecondaryColor,
                      foregroundColor: Colors.white,
                    ) ,
                    child: Text(CEppWelcomeButton1.toUpperCase(),
                        style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
