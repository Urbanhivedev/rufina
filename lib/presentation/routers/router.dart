import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rufina/presentation/bottom_navigation/bottom_navigation.dart';
import 'package:rufina/presentation/screens/home/play/play_screen.dart';
import 'package:rufina/presentation/screens/home/play/play_game_screen.dart';
import 'package:rufina/presentation/screens/home/play/second_play_screen.dart';
import 'package:rufina/presentation/screens/home/shop/shipping_screen.dart';
import 'package:rufina/presentation/screens/home/shop/shop_cart_screen.dart';
import 'package:rufina/presentation/screens/home/shop/shop_screen.dart';

import '../screens/home/home_screen.dart';

class AppRouters {
  static const String homeScreen = "/homeScreen";
  static const String bottomNavigationScreen = "/bottomNavigationScreen";

  /// PLAY SCREEN
  static const String playScreen = "/playScreen";
  static const String playGameScreen = "/playGameScreen";
  static const String playScondScreen = "/playScondScreen";
  static const String playFirstScreen = "/playFirstScreen";

  /// SHOP SCREEN
  static const String shopScreen = "/shopScreen";
  static const String shippingScreen = "/shippingScreen";
  static const String shopCartScreen = "/shopCartScreen";
}

class AppRouter {
  static Route route(RouteSettings settings) {
    switch (settings.name) {
      case AppRouters.homeScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const HomeScreen(),
        );
      case AppRouters.bottomNavigationScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => BottomNavigationScreen(
          ),
        );
      case AppRouters.playScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const PlayScreen(),
        );
      case AppRouters.playGameScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const PlayGameScreen(),
        );
      case AppRouters.playFirstScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const PlayScreen(),
        );
      case AppRouters.playScondScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const PlayScondeScreen(),
        );
      case AppRouters.shopScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const ShopScreen(),
        );
      case AppRouters.shopCartScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const ShopCartScreen(),
        );
      case AppRouters.shippingScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const ShippingScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Text("data"),
          ),
        );
    }
  }
}
