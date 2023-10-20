import 'package:flutter/material.dart';

class RecommendeList extends StatelessWidget {
  const RecommendeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder:
       (itemBuilder, index){
        return Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(image: AssetImage("lib/assets/house1.png"),
                fit: BoxFit.cover
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
      }),
    );
  }
}