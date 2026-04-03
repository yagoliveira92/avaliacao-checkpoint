import 'package:flutter/material.dart';
import 'package:usedev/src/screens/home/home_screen.dart';
import 'package:usedev/src/screens/cart/cart_screen.dart';
import 'package:usedev/src/screens/product/product_detail_screen.dart';
import 'package:usedev/src/screens/auth/login_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String productDetail = '/product';
  static const String cart = '/cart';
  static const String login = '/login';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      
      case AppRoutes.cart:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      
      case AppRoutes.productDetail:
        final productId = settings.arguments as String? ?? '';
        return MaterialPageRoute(
          builder: (_) => ProductDetailScreen(productId: productId),
        );
      
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Rota não encontrada')),
          ),
        );
    }
  }
}