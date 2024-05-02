import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/auth/Auth_controllers/auth_controller.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/pages/Recommended_list.dart';
import 'package:mm/pages/featured_list.dart';
import 'package:mm/pages/house_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.menu),
                      GestureDetector(
                        onTap: (){
                          AuthController.instance.logOut();
                        },
                        child: const Icon(Icons.logout_rounded,color: Colors.red,)),
                      
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Hi, There!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    
                      padding: const EdgeInsets.symmetric(horizontal: 20,),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset:
                                  Offset(0, 3), 
                              blurRadius: 6, 
                              spreadRadius: 0, 
                            ),
                          ],
                        ),
                        width: 70,
                        height: 80,
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Icon(
                              Icons.home,
                              size: 40,
                              color: Color.fromARGB(255, 1, 130, 5),
                            ),
                            Text(
                              'House',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey, 
                              offset:
                                  Offset(0, 3),
                              blurRadius: 6, 
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        width: 70,
                        height: 80,
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Icon(
                              Icons.apartment,
                              size: 40,
                              color: Color.fromARGB(255, 1, 130, 5),
                            ),
                            Text(
                              'Apartment',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset:
                                  Offset(0, 3), 
                              blurRadius: 6,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        width: 70,
                        height: 80,
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Icon(
                              Icons.house,
                              size: 40,
                              color: Color.fromARGB(255, 1, 130, 5),
                            ),
                            Text(
                              'FarmHouse',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey, 
                              offset:
                                  Offset(0, 3), 
                              blurRadius: 6,
                              spreadRadius: 0, 
                            ),
                          ],
                        ),
                        width: 70,
                        height: 80,
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Icon(
                              Icons.apartment_outlined,
                              size: 40,
                              color: Color.fromARGB(255, 1, 130, 5),
                            ),
                            Text(
                              'House',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Featured listing',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        print("...Go to login Screen");
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HousePage(),
                          ),
                        );
                      },
                      child: const Text(
                        ' View all',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<FeaturedController>(builder: (featuredHouses) {
                return featuredHouses.isLoaded
                    ? Container(
                       
                        height: 250,
                        child: const FeaturedList(),
                      )
                    : const CircularProgressIndicator(color: Colors.green);
              }),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Recommended for you',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<FeaturedController>(builder: (featuredHouses) {
                return featuredHouses.isLoaded
                    ? Container(height: 300, child: const RecommendeList())
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
