import 'package:flutter/material.dart';
import 'package:rental_app/core/utilies/assets/lotties/app_lotties.dart';
import 'package:rental_app/features/splash/views/widgets/custom_on_boarding_details.dart';

class ChatAndNegotiateOnBoardingStep extends StatelessWidget {
  const ChatAndNegotiateOnBoardingStep({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnBoardingDetails(
      image: AppLotties.chat,
      title: "Chat & Negotiate",
      description: "Connect directly with developers for pricing and services.",
    );
  }
}
