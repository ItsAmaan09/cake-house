import 'package:cake_house/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_colors.dart';

void main() {
  runApp(const CakeHouseApp());
}

class CakeHouseApp extends StatelessWidget {
  const CakeHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CakeHouse',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: AppRoutes.splash,
    );
  }
}
