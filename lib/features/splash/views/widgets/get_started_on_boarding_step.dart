import 'package:flutter/material.dart';
import 'package:rental_app/core/utilies/assets/lotties/app_lotties.dart';
import 'package:rental_app/features/splash/views/widgets/custom_on_boarding_details.dart';

class GetStartedOnBoardingStep extends StatelessWidget {
  const GetStartedOnBoardingStep({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnBoardingDetails(
      image: AppLotties.getStarted,
      title: "Get Started",
      description: "Sign up and start exploring the best properties today!",
    );
  }
}
