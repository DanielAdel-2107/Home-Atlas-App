import 'package:flutter/material.dart';
import 'package:rental_app/core/utilies/assets/images/app_images.dart';
import 'package:rental_app/core/utilies/extensions/app_extensions.dart';
import 'package:rental_app/features/auth/models/user_model.dart';
import 'package:rental_app/features/owner/profile/views/widgets/custom_user_info.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
    required this.user,
  });
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width *0.05,
          vertical: context.height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: context.height * 0.02,
          children: [
            Center(
              child: CircleAvatar(
                radius: context.width * 0.2,
                backgroundImage: AssetImage(AppImages.profileImage),
              ),
            ),
            SizedBox(
              height: context.height * 0.02,
              
            ),
            CustomUserInfo(title: 'Name', value: user.name),
            CustomUserInfo(title: 'Email', value: user.email),
            CustomUserInfo(title: 'Age', value: user.age),
            CustomUserInfo(title: 'Address', value: user.address),
            CustomUserInfo(title: 'Role', value: user.role),
          ],
        ),
      ),
    );
  }
}
