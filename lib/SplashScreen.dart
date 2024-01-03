import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation_practice/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return HomeScreen();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Splash Screen",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      )),
    );
  }
}
