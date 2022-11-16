import 'package:flutter/material.dart';
import 'package:sephora_project/app_theme.dart';
import 'package:sephora_project/home/home_export.dart';
import 'package:sephora_project/notification/notification_screen/connect_body_tag.dart';
import 'package:sephora_project/onboarding/onboarding.dart';
import 'package:sephora_project/register/register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingPage(),
    );
  }
}