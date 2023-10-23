import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/pages/splash_screen.dart';
import 'helper/dependancies.dart' as dep;

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<FeaturedController>().getFeaturedList();
    return GetBuilder<FeaturedController>(builder: (_){
      return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
    });
  }
}

