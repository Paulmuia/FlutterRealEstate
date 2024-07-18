import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/controllers/plot_controller.dart';

class HouseContents extends StatefulWidget {
  HouseContents({super.key});

  @override
  State<HouseContents> createState() => _HouseContentsState();
}

class _HouseContentsState extends State<HouseContents> {
  FeaturedController featuredController = Get.find();
  PlotController plotController = Get.find();
  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>?;

    final String livingArea = arguments?['livingArea'] ?? '';
    final String kitchen = arguments?['kitchen'] ?? '';
    final String bathroom = arguments?['bathroom'] ?? '';
    final String bedArea = arguments?['bedArea'] ?? '';
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.close_outlined)),
                    const SizedBox(
                      width: 120,
                    ),
                    const Text(
                      'Details',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const Icon(Icons.favorite_border_outlined),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.ios_share_rounded)
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    'Living Area',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  height: 220,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(livingArea), fit: BoxFit.cover)),
                ),
                const Center(
                  child: Text(
                    'Bed Area',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  height: 220,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(bedArea), fit: BoxFit.cover)),
                ),
                const Center(
                  child: Text(
                    'Kitchen',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  height: 220,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(kitchen), fit: BoxFit.cover)),
                ),
                const Center(
                  child: Text(
                    'BathRoom',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  height: 220,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(bathroom), fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
