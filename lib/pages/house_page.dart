import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mm/controllers/plot_controller.dart';
import 'package:mm/pages/house_contents.dart';
import 'package:mm/widgets/app_constants.dart';

import '../controllers/featured_controller.dart';

class HousePage extends StatefulWidget {
  const HousePage({super.key});

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
  @override
  Widget build(BuildContext context) {
    Get.find<FeaturedController>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text('Back')),
                SizedBox(
                  width: 280,
                ),
                Icon(Icons.menu)
              ],
            ),
            const Center(
              child: Text(
                'Features',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(child: GetBuilder<PlotController>(builder: (plotProducts) {
              return GetBuilder<FeaturedController>(builder: (featuredPlots){
                return Container(
                //color: Colors.green,
                child: ListView.builder(
                    itemCount: plotProducts.plotList.length,
                    itemBuilder: (context, index) {
                      return plotProducts.isLoaded
                          ? Column(
                              children: [
                                Stack(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(HouseContents(),
                                        arguments: {
                                           'livingArea': AppConstants.BASE_URL+ featuredPlots.featuredList[index].livingArea,
                                           'kitchen':  AppConstants.BASE_URL+ featuredPlots.featuredList[index].kitchen,
                                           'bathroom':  AppConstants.BASE_URL+ featuredPlots.featuredList[index].bathroom,
                                           'bedArea':  AppConstants.BASE_URL+ featuredPlots.featuredList[index].bedArea,
                                        }
                                        );
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          top: 15,
                                        ),
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  AppConstants.BASE_URL +
                                                      plotProducts
                                                          .plotList[index]
                                                          .image),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 30, left: 30),
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: const Center(
                                          child: Icon(Icons.share)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 30, left: 330),
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: const Icon(
                                          Icons.favorite_border_outlined),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  height: 120,
                                  width: 350,
                                  //color: Colors.orange,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Kirimi, CA, NY",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            height: 25,
                                            width: 50,
                                            color: Colors.white,
                                            child: const Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                ),
                                                Text(
                                                  '4.5',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Icon(Icons.pin_drop_outlined),
                                          Text(
                                            "Meru,  Nchiru",
                                            style: TextStyle(
                                                color: Colors.black38),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.bed,
                                                  color: Colors.green),
                                              Text(
                                                "4 Beds",
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.bathtub,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                "BathRooms",
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.area_chart_rounded,
                                                  color: Colors.green),
                                              Text(
                                                "12 sqft",
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "lib/assets/paul.png"))),
                                          ),
                                          const Text(
                                            "    John Adam",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          : const CircularProgressIndicator();
                    }),
              );
              });
            }))
          ],
        ),
      ),
    );
  }
}
