import 'package:e_commarce_v2_flutter/views/auth/signin_screen.dart';
import 'package:e_commarce_v2_flutter/views/auth/signup_screen.dart';
import 'package:e_commarce_v2_flutter/views/home/home_screen.dart';
import 'package:e_commarce_v2_flutter/views/productDetails/productDetails_screen.dart';
import 'package:e_commarce_v2_flutter/views/splash/onboard_screen.dart';
import 'package:e_commarce_v2_flutter/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    late Widget route;
    if (settings.name == SplashScreen.name) {
      route = const SplashScreen();
    }
    if (settings.name == OnboardScreen.name) {
      route = const OnboardScreen();
    }
    if (settings.name == SigninScreen.name) {
      route = const SigninScreen();
    }
    if (settings.name == SignupScreen.name) {
      route = const SignupScreen();
    }
    if (settings.name == HomeScreen.name) {
      route = const HomeScreen();
    }
    if (settings.name == ProductdetailsScreen.name) {
      route = ProductdetailsScreen();
    }
    return MaterialPageRoute(builder: (context) {
      return route;
    });
  }
}
