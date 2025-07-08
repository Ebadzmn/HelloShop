import 'package:e_commarce_v2_flutter/bindings/controller_bindings.dart';
import 'package:e_commarce_v2_flutter/config/theme.dart';
import 'package:e_commarce_v2_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/productCategory',
      onGenerateRoute: AppRoutes.onGenerateRoute,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      initialBinding: ControllerBindings(),
    );
  }
}
