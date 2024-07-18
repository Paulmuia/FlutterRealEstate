import 'package:flutter/material.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
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
                    ],
                  ),
                  const Icon(Icons.menu)
                ],
              ),
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
              return GetBuilder<FeaturedController>(builder: (featuredPlots) {
                return Container(
                  color: Colors.white,
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
                                          Get.to(HouseContents(), arguments: {
                                            'livingArea':
                                                AppConstants.BASE_URL +
                                                    featuredPlots
                                                        .featuredList[index]
                                                        .livingArea,
                                            'kitchen': AppConstants.BASE_URL +
                                                featuredPlots
                                                    .featuredList[index]
                                                    .kitchen,
                                            'bathroom': AppConstants.BASE_URL +
                                                featuredPlots
                                                    .featuredList[index]
                                                    .bathroom,
                                            'bedArea': AppConstants.BASE_URL +
                                                featuredPlots
                                                    .featuredList[index]
                                                    .bedArea,
                                          });
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 8),
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
                                      const Positioned(
                                        top: 20,
                                        left: 30,
                                        child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 18,
                                            child: Icon(Icons.share)),
                                      ),
                                      const Positioned(
                                        top: 20,
                                        right: 30,
                                        child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 18,
                                            child:
                                                Icon(Icons.favorite_outline)),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    height: 120,
                                    width: double.maxFinite,
                                    //color: Colors.orange,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              plotProducts.plotList[index].name,
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                ),
                                                SizedBox(
                                                  width: 10,
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
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.pin_drop_outlined),
                                            Text(
                                              plotProducts
                                                  .plotList[index].location,
                                              style: const TextStyle(
                                                  color: Colors.black38),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(Icons.bed,
                                                    color: Colors.green),
                                                Text(
                                                  "${featuredPlots.featuredList[index].beds.toString()} Beds",
                                                  style: const TextStyle(
                                                      color: Colors.black38),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.bathtub,
                                                  color: Colors.green,
                                                ),
                                                Text(
                                                  "${featuredPlots.featuredList[index].bath.toString()} Bathroom(s)",
                                                  style: const TextStyle(
                                                      color: Colors.black38),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                    Icons.area_chart_rounded,
                                                    color: Colors.green),
                                                Text(
                                                  "${featuredPlots.featuredList[index].size.toString()} sqft",
                                                  style: const TextStyle(
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
                                              "    Paul Muia",
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
