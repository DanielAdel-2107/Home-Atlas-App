import 'package:flutter/material.dart';
import 'package:rental_app/core/utilies/assets/lotties/app_lotties.dart';
import 'package:rental_app/features/splash/views/widgets/custom_on_boarding_details.dart';

class BrowsePropertiesOnBoardingStep extends StatelessWidget {
  const BrowsePropertiesOnBoardingStep({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnBoardingDetails(
      image: AppLotties.browseProperties,
      title: "Browse Properties",
      description:
          "Filter and search for properties that match your needs.",
    );
  }
}
