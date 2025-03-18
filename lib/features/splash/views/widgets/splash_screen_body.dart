import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rental_app/core/utilies/assets/images/app_images.dart';
import 'package:rental_app/core/utilies/extensions/app_extensions.dart';
import 'package:rental_app/core/utilies/styles/app_text_styles.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.logo,
              width: context.width * 0.8,
              height: context.height * 0.5,
            ).animate().fadeIn(duration: 1000.ms, delay: 200.ms).fade(
                begin: 0, end: 1, duration: 800.ms, curve: Curves.easeOut),
          ],
        ),
      ),
    );
  }
}
