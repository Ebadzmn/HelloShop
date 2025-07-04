import 'package:e_commarce_v2_flutter/config/app_colors.dart';
import 'package:e_commarce_v2_flutter/config/assets_path.dart';
import 'package:e_commarce_v2_flutter/views/splash/onboard_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String name = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, OnboardScreen.name);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashbackground,
      body: Center(
        child: Image.asset(AssetsPath.splash),
      ),
    );
  }
}
