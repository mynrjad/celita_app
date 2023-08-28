import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../models/model_onboarding.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(CEppDefaultSize),
        color: model.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(model.image),
              height: model.size * 0.4,),
            Column(
              children: [
                Text(model.heading,
                    style: Theme.of(context).textTheme.displayMedium),
                Text(model.subheading,
                    style: Theme.of(context).textTheme.displayLarge),
                Text(model.subtitle,
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
