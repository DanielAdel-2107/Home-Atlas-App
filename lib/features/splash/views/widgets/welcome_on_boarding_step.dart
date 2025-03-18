import 'package:flutter/material.dart';
import 'package:rental_app/core/utilies/assets/lotties/app_lotties.dart';
import 'package:rental_app/features/splash/views/widgets/custom_on_boarding_details.dart';

class WelcomeOnBoardingStep extends StatelessWidget {
  const WelcomeOnBoardingStep({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnBoardingDetails(
      description:
          "Find and list properties effortlessly with Home Atlas.",
      image: AppLotties.welcomeLottie,
      title: "Welcome to Home Atlas",
    );
  }
}
