import 'package:flutter/material.dart';
import 'package:rental_app/features/auth/models/user_model.dart';
import 'package:rental_app/features/owner/profile/views/widgets/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final user = args != null ? UserModel.fromJson(args) : null;

    return Scaffold(
      body: ProfileScreenBody(
        user: user!,
      ),
    );
  }
}


