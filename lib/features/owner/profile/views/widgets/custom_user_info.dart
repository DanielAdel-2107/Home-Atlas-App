import 'package:flutter/material.dart';
import 'package:rental_app/core/utilies/styles/app_text_styles.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.title24PrimaryColorW500,
        ),
        Text(
          value,
          style: AppTextStyles.title20Black400,
        ),
      ],
    );
  }
}
