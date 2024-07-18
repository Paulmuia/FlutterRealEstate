import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/auth/Auth_controllers/auth_controller.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/pages/Recommended_list.dart';
import 'package:mm/pages/featured_list.dart';
import 'package:mm/pages/house_page.dart';
import 'package:mm/widgets/Container_widgets.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    Get.find<FeaturedController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu),
                    GestureDetector(
                        onTap: () {
                          AuthController.instance.logOut();
                        },
                        child: const Icon(
                          Icons.logout_rounded,
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "     Hi, There ${widget.username} ",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: ' Search Houses...',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.green),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 2, 35, 63),
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 2, 35, 63),
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerWidgets(
                      icon: Icon(
                        Icons.home_outlined,
                        size: 40,
                        color: Color.fromARGB(255, 1, 130, 5),
                      ),
                      text: Text(
                        'House',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  ContainerWidgets(
                      icon: Icon(
                        Icons.apartment_outlined,
                        size: 40,
                        color: Color.fromARGB(255, 1, 130, 5),
                      ),
                      text: Text(
                        'Apartment',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  ContainerWidgets(
                      icon: Icon(
                        Icons.house_outlined,
                        size: 40,
                        color: Color.fromARGB(255, 1, 130, 5),
                      ),
                      text: Text(
                        'Farm House',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  ContainerWidgets(
                      icon: Icon(
                        Icons.home_outlined,
                        size: 40,
                        color: Color.fromARGB(255, 1, 130, 5),
                      ),
                      text: Text(
                        'House',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured listing',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const HousePage());
                      },
                      child: const Text(
                        ' View all',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<FeaturedController>(builder: (featuredHouses) {
                return featuredHouses.isLoaded
                    ? const SizedBox(
                        height: 250,
                        child: FeaturedList(),
                      )
                    : const CircularProgressIndicator(color: Colors.green);
              }),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '    Recommended for you',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<FeaturedController>(builder: (featuredHouses) {
                return featuredHouses.isLoaded
                    ? const SizedBox(height: 300, child: RecommendeList())
                    : const CircularProgressIndicator(
                        color: Colors.green,
                      );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
