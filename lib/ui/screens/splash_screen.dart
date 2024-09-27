import 'package:templaterpone/bloc/splash_screen/splash_screen_bloc.dart';
import 'package:templaterpone/utils/app_constants_utils.dart';
import 'package:templaterpone/utils/asset_image_utils.dart';
import 'package:templaterpone/utils/app_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'landing_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenBloc()..add(StartSplash()),
      child: Scaffold(
        body: BlocConsumer<SplashScreenBloc, SplashScreenState>(
          listener: (context, state) {
            navigateAfterSplash(context, state: state);
          },
          builder: (context, state) {
            return Center(
              child: Image.asset(
                AppAssetImages.appLogo,
                width: AppConstantsUtils.splashScreenLogoSize,
                height: AppConstantsUtils.splashScreenLogoSize,
              ),
            );
          },
        ),
      ),
    );
  }

  void navigateAfterSplash(
    BuildContext context, {
    required SplashScreenState state,
  }) {
    try {
      if (state is UserLoggedInState) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LandingScreen(),
          ),
        );
      } else if (state is UserNotLoggedInState) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      }
    } catch (e) {
      AppFunctions.printError(
        methodName: "SplashScreen > navigateAfterSplash",
        errorString: e.toString(),
      );
    }
  }
}
