import 'package:assignment/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import '../features/visitor_queue/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Manager',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,

      home: const HomePage(),
    );
  }
}



class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      scaffoldBackgroundColor:
          AppColors.scaffold,

      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
      ),
    );
  }
}