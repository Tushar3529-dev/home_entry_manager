import 'package:assignment/core/constants/app_colors.dart';
import 'package:assignment/dependency_injection.dart';
import 'package:assignment/features/visitor_queue/presentation/cubit/visitor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/theme/app_theme.dart';
import '../features/visitor_queue/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (_) =>
              getIt<VisitorCubit>()
                ..loadVisitors(),
        ),

      ],

      child: MaterialApp(
          theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
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