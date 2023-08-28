import 'package:celita/components/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
 
class CEppOnboardingScreen extends StatelessWidget {
  const CEppOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        children: [
          LiquidSwipe(
              pages: [
                Container(color: CEppOnboardingColor),
                Container(color: CEppPrimaryColor),
                Container(color: CEppSecondaryColor),
          ],
          ),
        ],
      )
    );
  }
}


