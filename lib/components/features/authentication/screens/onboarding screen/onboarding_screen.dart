import 'package:celita/components/constants/colors.dart';
import 'package:celita/components/constants/image_strings.dart';
import 'package:celita/components/constants/sizes.dart';
import 'package:celita/components/features/authentication/models/model_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../constants/text_strings.dart';
import 'onboarding_page_widget.dart';

class CEppOnboardingScreen extends StatelessWidget {
   CEppOnboardingScreen({super.key});

  final controller = LiquidController();
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      //First Page
      OnboardingPage(
          model: OnBoardingModel(
              image: CEppOnboarding1,
              heading: CEppOnboardingHeading1,
              subheading: CEppOnboardingSubheading1,
              subtitle: CEppOnboardingSubtitle1,
              size: size.height,
              bgColor: CEppOnboardingColor)),

      OnboardingPage(
          model: OnBoardingModel(
        image: CEppOnboarding2,
        heading: CEppOnboardingHeading2,
        subheading: CEppOnboardingSubheading2,
        subtitle: CEppOnboardingSubtitle2,
        size: size.height,
        bgColor: CEppOnboardingColor,
      )),
    ];


    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: pages,
          liquidController: controller,
          onPageChangeCallback: onPageChangedCallback,
        ),

        //Button
        Positioned(
          bottom: 60.0,
          child: OutlinedButton(
            onPressed: () {
              int nextPage = controller.currentPage + 1;
              controller.animateToPage(page: nextPage);
            },
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
            onPressed: () => controller.jumpToPage(page:1),
            child: const Text("Skip", style: TextStyle(color: Colors.black87)),
          ),
        ),
        //Active Index
        Positioned(
          top: 60,
          child: AnimatedSmoothIndicator(
            count: 2,
            activeIndex: controller.currentPage,
            effect: WormEffect(
              activeDotColor: Color(0xFFFF6157),
              dotHeight: 5.0,
            ),
          )
        ),
      ],
    ));
  }

  void onPageChangedCallback(int activePageIndex) {
    currentPage = activePageIndex;
  }
}
