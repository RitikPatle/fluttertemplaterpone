import 'repositories/shared_preferences/shared_preferences_repo.dart';
import 'utils/app_constants_utils.dart';
import 'ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'utils/color_utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferencesRepo.initializeSharedPreferencesRepo();
  runApp(const TemplateRpOneApp());
}

class TemplateRpOneApp extends StatelessWidget {
  const TemplateRpOneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstantsUtils.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
