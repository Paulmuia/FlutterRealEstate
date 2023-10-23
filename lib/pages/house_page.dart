import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/controllers/plot_controller.dart';
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
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.arrow_back_ios_new_outlined),
                SizedBox(width: 5,),
                Text('Back',style: TextStyle(color: Colors.black),),
                SizedBox(width: 280,),
                Icon(Icons.menu)
              ],
            ),
            Center(
              child:Text('Features',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
      
            Expanded(
              child: GetBuilder<PlotController>(builder: (plotProducts){
                return Container(
                //color: Colors.green,
                child: ListView.builder(
                  itemCount: plotProducts.plotList.length,
                    itemBuilder: (context,index){
                  return plotProducts.isLoaded?Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                        margin: EdgeInsets.only(left: 15,right: 15,top: 15,),
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(AppConstants.BASE_URL+plotProducts.plotList[index].image),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30,left: 30),
                        height: 30,
                        width: 30,

                        decoration: BoxDecoration(shape: BoxShape.circle,
                        color: Colors.white
                        ),
                        child: Center(child: Icon(Icons.share)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30,left: 330),
                        height: 30,
                        width: 30,

                        decoration: BoxDecoration(shape: BoxShape.circle,
                        color: Colors.white
                        ),
                        child: Icon(Icons.favorite_border_outlined),
                      )
                        ],
                      ),
                      Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              height: 120,
              width: 350,
              //color: Colors.orange,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kirimi, CA, NY", style: TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.bold
                  ),),
                  Container(
                    height: 25,
                    width: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.orange,),
                        Text('4.5',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)
                      ],
                    ),
                  )
                    ],
                   ),
                  const Row(
                    children: [
                      Icon(Icons.pin_drop_outlined),
                      Text("Meru,  Nchiru", style: TextStyle(color: Colors.black38),),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.bed,color: Colors.green),
                          Text("4 Beds",style: TextStyle(color: Colors.black38),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.bathtub, color: Colors.green,),
                          Text("BathRooms",style: TextStyle(color: Colors.black38),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.area_chart_rounded,color: Colors.green),
                          Text("12 sqft", style: TextStyle(color: Colors.black38),)
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
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage("lib/assets/paul.png"))
                      ),
                      ),
                      Text("    John Adam", style: TextStyle(fontWeight: FontWeight.w700),)
                    ],
                  )
                ],
              ),
            )
                    ],
                  ):CircularProgressIndicator();
                }),
              );
              })
            )
          ],
        ),
      ),
    );
  }
}
