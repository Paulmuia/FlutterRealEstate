import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/pages/Recommended_list.dart';
import 'package:mm/pages/detailed_house.dart';
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
                child: const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(Icons.menu),
                    Icon(Icons.notifications_on_sharp),
                  ],),
                ),
              ),
              const SizedBox(height: 20,),

              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('Hi, There!',style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey
                          ),
                          height: 50,
                          width: 350,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 6,),
                                Text('Search',style: TextStyle(color: Colors.black,fontSize: 15),),
                                SizedBox(width: 200,),
                                Icon(Icons.mic)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.grey,
                        ),
                        width: 70,
                        height: 80,
                        child: const Column(
                          children: [
                            SizedBox(height: 4,),
                            Icon(Icons.home,size: 40,),
                            Text('House',style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.yellow,
                        ),
                        width: 70,
                        height: 80,
                        child: const Column(
                          children: [
                            SizedBox(height: 4,),
                            Icon(Icons.apartment,size: 40,),
                            Text('Apartment',style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.orange,
                        ),
                        width: 70,
                        height: 80,
                        child: const Column(
                          children: [
                            SizedBox(height: 4,),
                            Icon(Icons.house,size: 40,),
                            Text('FarmHouse',style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.green,
                        ),
                        width: 70,
                        height: 80,
                        child: const Column(
                          children: [
                            SizedBox(height: 4,),
                            Icon(Icons.apartment_outlined,size: 40,),
                            Text('House',style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Featured listing',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 20),
                     child: GestureDetector(
                       onTap: (){
                         print("...Go to login Screen");
                         Navigator.of(context).push(
                           MaterialPageRoute(
                             builder: (context) => HousePage(),
                           ),
                         );
                       },
                       child: const Text(
                         ' View all',
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 15,
                             fontWeight: FontWeight.bold),),
                     ),
                   ),
                ],

              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DetailedHouse(),
                    ),
                  );
                },
                child: GetBuilder<FeaturedController>(
                  builder: (featuredHouses) {
                    return Container(
                      // color: Colors.red,
                      height: 250,
                      child: FeaturedList(),
                      // child: PageView.builder(
                      //   controller: pageController,
                      //   itemCount: featuredHouses.featuredList.length,
                      //     itemBuilder: (context,index){
                      //   return Column(
                      //     children: [
                      //       Container(
                      //         margin: const EdgeInsets.only(left: 10,right: 10),
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.all(Radius.circular(15)),
                      //           color: Colors.blue,
                      //           image: DecorationImage(
                      //             fit: BoxFit.cover,
                      //             image: NetworkImage(AppConstants.BASE_URL+featuredHouses.featuredList[index].plotImage)
                      //           )
                      //         ),
                      //         height: 160,

                      //       ),
                      //       Container(
                      //         decoration: const BoxDecoration(
                      //             color: Colors.white,
                      //             borderRadius: BorderRadius.all(Radius.circular(20))
                      //         ),
                      //         height: 130,
                      //         width: 290,
                      //         child: Column(
                      //           children: [
                      //             const SizedBox(height: 5,),
                      //             const Row(
                      //               children: [
                      //                 Padding(
                      //                   padding: EdgeInsets.only(left: 10),
                      //                   child: Text('Grey house',style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                      //                 ),
                      //               ],
                      //             ),
                      //             const Padding(
                      //               padding: EdgeInsets.only(left: 10),
                      //               child: Row(
                      //                 children: [
                      //                   Icon(Icons.location_on,color: Colors.black54,),
                      //                    SizedBox(width: 10,),
                      //                    Text('Nchiiru, NY 100',style: TextStyle(color: Colors.black, fontSize: 15),)

                      //                 ],
                      //               ),
                      //             ),
                      //             const Padding(
                      //               padding:  EdgeInsets.only(left: 10,right: 10),
                      //               child: Row(

                      //                 children: [
                      //                   Icon(Icons.bed,color: Colors.green),
                      //                   Text('4 Beds'),
                      //                   SizedBox(width: 15,),
                      //                   Icon(Icons.bathroom_rounded,color: Colors.green),
                      //                   Text('2 Bath'),
                      //                   SizedBox(width: 15,),
                      //                   Icon(Icons.square_outlined,color: Colors.green),
                      //                   Text('10.2 sqft'),
                      //                 ],
                      //               ),
                      //             ),
                      //             Padding(
                      //               padding: const EdgeInsets.only(left: 10),
                      //               child: Row(
                      //                 children: [
                      //                   Container(
                      //                     decoration: BoxDecoration(
                      //                       borderRadius: BorderRadius.circular(30),
                      //                       image: const DecorationImage(
                      //                         image: AssetImage('lib/assets/paul.png'),
                      //                         fit: BoxFit.cover
                      //                       )
                      //                     ),
                      //                     height: 45,
                      //                     width: 45,
                      //                   ),
                      //                   const SizedBox(width: 20,),
                      //                   const Text('Paul Muia',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                      //                 ],
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //       )
                      //     ],
                      //   );
                      // }),

                    );
                  }
                ),
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Recommended for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: 400,
                child: RecommendeList())
            ],
          ),
        ),
      ),

    );
  }
}
