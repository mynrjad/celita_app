import 'package:celita/components/constants/colors.dart';
import 'package:celita/components/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../../constants/text_strings.dart';
 
class CEppOnboardingScreen extends StatelessWidget {
  const CEppOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        children: [
          LiquidSwipe(
              pages: [
                Container(color: CEppOnboardingColor,
                child: Column(
                  children: [
                    Image(image: AssetImage(CEppOnboarding1)),
                    Text(CEppOnboardingHeading1),
                    Text(CEppOnboardingSubheading1),
                    Text(CEppOnboardingSubtitle1),
                  ],
                )),
                Container(color: CEppPrimaryColor),
                Container(color: CEppSecondaryColor),
          ],
          ),
        ],
      )
    );
  }
}


