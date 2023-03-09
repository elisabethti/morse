import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rse_test_app/views/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff007DFF),
      body: Center(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > constraints.maxHeight) {
            // Landscape
            return Image.asset(
              'assets/images/splashscreen_logo.png',
              width: MediaQuery.of(context).size.width *
                  0.4, // ubah sesuai kebutuhan
              fit: BoxFit.cover, // sesuaikan dengan kebutuhan
            );
          } else {
            // Portrait
            return Image.asset(
              'assets/images/splashscreen_logo.png',
              width: MediaQuery.of(context).size.width *
                  0.8, // ubah sesuai kebutuhan
              fit: BoxFit.cover, // sesuaikan dengan kebutuhan
            );
          }
        },
      )),
    );
  }
}
