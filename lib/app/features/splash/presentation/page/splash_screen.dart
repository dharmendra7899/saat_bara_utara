import 'dart:async';

import 'package:flutter/material.dart';
import 'package:saat_bara_utara/app/core/assets/constant.dart';
import 'package:saat_bara_utara/app/features/bhumi/presentation/pages/bhumi_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkNavigation();
  }

  _checkNavigation() async {
    Timer(const Duration(seconds: 3), () async {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const BhumiScreen()),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ConstantImage.splash,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
