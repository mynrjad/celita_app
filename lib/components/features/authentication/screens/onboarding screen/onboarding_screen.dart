import 'package:celita/components/constants/colors.dart';
import 'package:celita/components/constants/image_strings.dart';
import 'package:celita/components/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../../constants/text_strings.dart';

class CEppOnboardingScreen extends StatelessWidget {
  const CEppOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      children: [
        LiquidSwipe(
          pages: [
            OnboardingPage(size: size),
            Container(color: CEppPrimaryColor),
            Container(color: CEppSecondaryColor),
          ],
        ),
      ],
    ));
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(CEppDefaultSize),
        color: CEppOnboardingColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(CEppOnboarding1),
            height: size.height * 0.4,),
            Column(
              children: [
                Text(CEppOnboardingHeading1,
                style: Theme.of(context).textTheme.displayMedium),
                Text(CEppOnboardingSubheading1,
                    style: Theme.of(context).textTheme.displayLarge),
                Text(CEppOnboardingSubtitle1,
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 100.0,),
              ],
            ),
          ],
        ));
  }
}
