import 'package:flutter/material.dart';
import 'package:mm/pages/detailed_house.dart';
import 'package:mm/pages/house_page.dart';
import 'package:mm/pages/register.dart';
import 'package:mm/pages/verificationscreen.dart';
import 'package:mm/pages/welcome_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}

