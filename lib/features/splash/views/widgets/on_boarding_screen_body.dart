import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_app/core/utilies/colors/app_colors.dart';
import 'package:rental_app/core/utilies/extensions/app_extensions.dart';
import 'package:rental_app/features/splash/view_models/on_boarding_screen_cubit/on_boarding_screen_cubit.dart';
import 'package:rental_app/features/splash/view_models/on_boarding_screen_cubit/on_boarding_screen_state.dart';
import 'package:rental_app/features/splash/views/widgets/back_and_next_button.dart';
import 'package:rental_app/features/splash/views/widgets/custom_page_view.dart';
import 'package:rental_app/features/splash/views/widgets/skip_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => OnBoardingScreenCubit(),
        child: BlocBuilder<OnBoardingScreenCubit, OnBoardingScreenState>(
            builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.width * 0.05,
                vertical: context.height * 0.01),
            child: Column(
              children: [
                SkipButton(),
                CustomPageView(),
                SmoothPageIndicator(
                  controller: context.onBoardingScreenCubit.pageController,
                  count: 5,
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: AppColors.primaryColor,
                    dotWidth: context.width * 0.1,
                  ),
                ),
                SizedBox(height: context.height * 0.03),
                BackAndNextButton()
              ],
            ),
          );
        }),
      ),
    );
  }
}
