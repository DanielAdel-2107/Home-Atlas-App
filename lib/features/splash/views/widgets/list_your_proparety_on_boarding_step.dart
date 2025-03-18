import 'package:flutter/material.dart';
import 'package:rental_app/core/utilies/assets/lotties/app_lotties.dart';
import 'package:rental_app/features/splash/views/widgets/custom_on_boarding_details.dart';

class ListYourProparetyOnBoardingStep extends StatelessWidget {
  const ListYourProparetyOnBoardingStep({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnBoardingDetails(
      image: AppLotties.listYourProperty,
      title: "List Your Property",
      description: "Developers can easily add and manage their listings.",
    );
  }
}
