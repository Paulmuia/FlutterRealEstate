import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/pages/detailed_house.dart';
import 'package:mm/widgets/app_constants.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<FeaturedController>(builder: (featuredHouses){
        return ListView.builder(
        itemCount: featuredHouses.featuredList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:
       (itemBuilder, index){
        return Column(
          children: [
            GestureDetector(
              onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DetailedHouse(),
                    ),
                  );
                },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 200,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage(AppConstants.BASE_URL+featuredHouses.featuredList[index].plotImage),
                  fit: BoxFit.cover
                  ),
                ), 
                
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              height: 120,
              width: 200,
              // color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Kirimi, CA, NY", style: TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.bold
                  ),),
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
                          Text("Bath",style: TextStyle(color: Colors.black38),),
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
        );
      });
      })
    );
  }
}