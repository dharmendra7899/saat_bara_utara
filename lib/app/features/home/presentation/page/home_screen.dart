import 'package:flutter/material.dart';
import 'package:saat_bara_utara/app/core/custom/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: appText(
              title: "Home",
              context: context,
              fontWeight: FontWeight.w500,
              fontSize: 18)),
    );
  }
}
