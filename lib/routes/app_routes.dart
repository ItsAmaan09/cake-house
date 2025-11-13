import 'package:cake_house/features/auth/signup_screen.dart';
import 'package:cake_house/features/cart/cart_screen.dart';
import 'package:cake_house/features/cart/checkout_screen.dart';
import 'package:cake_house/features/cart/order_confirmation_screen.dart';
import 'package:cake_house/features/splash/splash_screen.dart';
import 'package:cake_house/models/cake.dart';
import 'package:cake_house/models/cartItem.dart';
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
  static const cartScreen = '/cart-screen';
  static const checkout = '/checkout';
  static const orderConfirmation = '/order_confirmation';


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
      case cartScreen:
        return MaterialPageRoute(builder: (_)=> const CartScreen());
      case checkout:
        final args = settings.arguments as Map<String, dynamic>;
        final cartItems = args['cartItems'] as List<CartItem>;
        final total = args['total'] as double;
        return MaterialPageRoute(builder: (_)=> CheckoutScreen(cartItems: cartItems, total: total));
      case orderConfirmation:
        return MaterialPageRoute(builder: (_)=> const OrderConfirmationScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text("No route found"))),
        );
    }
  }
}
