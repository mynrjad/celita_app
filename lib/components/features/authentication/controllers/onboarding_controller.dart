import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';
import '../models/model_onboarding.dart';
import '../screens/onboarding screen/onboarding_page_widget.dart';


class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    //First Page
    OnboardingPage(
        model: OnBoardingModel(
            image: CEppOnboarding1,
            heading: CEppOnboardingHeading1,
            subheading: CEppOnboardingSubheading1,
            subtitle: CEppOnboardingSubtitle1,
            bgColor: CEppOnboardingColor)),

    OnboardingPage(
        model: OnBoardingModel(
          image: CEppOnboarding2,
          heading: CEppOnboardingHeading2,
          subheading: CEppOnboardingSubheading2,
          subtitle: CEppOnboardingSubtitle2,
          bgColor: CEppOnboardingColor,
        )),
  ];


  skip() => controller.jumpToPage(page: 1);
  animatetoNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
}
