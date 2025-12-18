import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'onboarding/onboarding_screen.dart';
import 'home/bottom_nav.dart';


void main() {
  runApp(const SkipTheQueueApp());
}

class SkipTheQueueApp extends StatelessWidget {
  const SkipTheQueueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skip The Queue',
      theme: AppTheme.lightTheme,
      home: const BottomNav(),

    );
  }
}
