import 'package:flutter/material.dart';
import 'package:saat_bara_utara/app/core/assets/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Image.asset(
            ConstantImage.appLogo,
            scale: 2,
          ),
        ),
    );
  }
}
