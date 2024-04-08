import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/controllers/plot_controller.dart';
import 'package:mm/pages/detailed_house.dart';
import 'package:mm/widgets/app_constants.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<PlotController>(builder: (plotHouses){
      return GetBuilder<FeaturedController>(builder: (featuredProducts){
          return ListView.builder(
        itemCount: plotHouses.plotList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:
       (itemBuilder, index){
        return Column(
          children: [
            GestureDetector(
              onTap: (){
                   Get.to(DetailedHouse(),
                        arguments: {
                          'image': AppConstants.BASE_URL + plotHouses.plotList[index].image,
                        });
                },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 210,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage(AppConstants.BASE_URL+plotHouses.plotList[index].image),
                  fit: BoxFit.cover
                  ),
                ), 
                
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              height: 120,
              width: 210,
              // color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(plotHouses.plotList[index].name,
                   style: TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.bold
                  ),),
                   Row(
                    children: [
                      Icon(Icons.pin_drop_outlined),
                      Text(plotHouses.plotList[index].location, style: TextStyle(color: const Color.fromRGBO(0, 0, 0, 0.38)),),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.bed,color: Colors.green),
                         Text("${featuredProducts.featuredList[index].beds}Beds",style: TextStyle(color: Colors.black38),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.bathtub, color: Colors.green,),
                          Text("${featuredProducts.featuredList[index].bath}Bath",style: TextStyle(color: Colors.black38),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.area_chart_rounded,color: Colors.green),
                         Text("${featuredProducts.featuredList[index].size}sqft", style: TextStyle(color: Colors.black38),)
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
     });
      })
    );
  }
}