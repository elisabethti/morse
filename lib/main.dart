import 'package:flutter/material.dart';
import 'package:rse_test_app/routes.dart';
import 'package:rse_test_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: customRoutes,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
