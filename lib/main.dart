import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:mm/auth/Auth_controllers/auth_controller.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/controllers/plot_controller.dart';
import 'package:mm/pages/filtered_houses.dart';
import 'package:mm/widgets/route_helper.dart';
import 'helper/dependancies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyDCnbFcTAyXO2kJtajKHDguHWLNHVIjCsM",
              appId: "1:341140691667:android:873a4edb21cc94a7191226",
              messagingSenderId: "341140691667y",
              projectId: "real-estate-app-869b7"))
      .then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<FeaturedController>().getFeaturedList();
    Get.find<PlotController>().getPlotList();
    return GetBuilder<FeaturedController>(builder: (_) {
      return GetMaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        home: const FilteredHouses(),
        initialRoute: RouteHelper.initial,
        getPages: RouteHelper.routes,
      );
    });
  }
}
