import 'package:cake_house/features/auth/signup_screen.dart';
import 'package:cake_house/features/splash/splash_screen.dart';
import 'package:cake_house/models/cake.dart';
import 'package:flutter/material.dart';

import '../features/auth/login_screen.dart';
import '../features/home/cake_detail_screen.dart';
import '../features/home/home_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const signup = '/signup';
  static const home = '/home';
  static const cakeDetail = '/cake_detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case cakeDetail:
        final cake = settings.arguments as Cake;
        return MaterialPageRoute(builder: (_) => CakeDetailScreen(cake: cake));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text("No route found"))),
        );
    }
  }
}
