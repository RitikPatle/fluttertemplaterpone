import 'package:templaterpone/utils/app_constants_utils.dart';
import 'package:templaterpone/utils/color_utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(
            AppConstantsUtils.constMainPadding,
          ),
          child: Column(
            children: [
              Text(
                "Login Screen",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
