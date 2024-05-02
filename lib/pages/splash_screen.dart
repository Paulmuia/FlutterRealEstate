import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/auth/auth_Pages/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    Timer(const Duration(seconds: 5), () => Get.off(const WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: animation,
              child: Center(
                  child: Image.asset(
                'lib/assets/house13.jpg',
                width: 250,
              ))),
          //SizedBox(height: 15,),
          ScaleTransition(
              scale: animation,
              child: const Center(
                  child: Text(
                'The Best Houses',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic),
              )))
        ],
      ),
    );
  }
}
