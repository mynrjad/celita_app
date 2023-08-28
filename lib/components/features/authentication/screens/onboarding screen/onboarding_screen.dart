import 'package:celita/components/constants/colors.dart';
import 'package:celita/components/constants/image_strings.dart';
import 'package:celita/components/constants/sizes.dart';
import 'package:celita/components/features/authentication/controllers/onboarding_controller.dart';
import 'package:celita/components/features/authentication/models/model_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../constants/text_strings.dart';
import 'onboarding_page_widget.dart';

class CEppOnboardingScreen extends StatelessWidget {
   CEppOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ObController = OnBoardingController();
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: ObController.pages,
          liquidController: ObController.controller,
          onPageChangeCallback: ObController.onPageChangedCallback,
        ),

        //Button
        Positioned(
          bottom: 60.0,
          child: OutlinedButton(
            onPressed: () => ObController.animatetoNextSlide(),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              foregroundColor: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                color: CEppSecondaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        //Skip
        Positioned(
          top: 40,
          right: 20,
          child: TextButton(
            onPressed: () => ObController.skip(),
            child: const Text("Skip", style: TextStyle(color: Colors.black87)),
          ),
        ),
        //Active Index
        Obx(
            () => Positioned(
            top: 60,
            child: AnimatedSmoothIndicator(
              count: 2,
              activeIndex: ObController.currentPage.value,
              effect: WormEffect(
                activeDotColor: Color(0xFFFF6157),
                dotHeight: 5.0,
              ),
            )
          ),
        ),
      ],
    ));
  }
}
