import 'dart:ffi';

import 'package:flutter/material.dart';

class HousePage extends StatelessWidget {
  const HousePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Row
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(Icons.arrow_back_ios,
                  color: Colors.grey[600],
                  ), Text("Back", style: 
                  TextStyle(
                    color: Colors.grey[600]
                  ),)],
                ),
                Text("Featured", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Icon(Icons.more_vert, color: Colors.grey[600],)
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: 15,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    height: 270,
                    width: double.maxFinite,
                    // color: Colors.blue[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 160,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[100],
                            image: DecorationImage(
                                image: AssetImage("lib/assets/plot3.webp"),
                                fit: BoxFit.cover),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.share),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 325, top: 10),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.favorite_border),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fidi Studio Office",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.grey[600],),
                            Text("Meru, Nchiru", style: TextStyle(
                              color: Colors.grey
                            ),),
                            Row(
                              children: [],
                            )
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.bed, color: Colors.green),
                                Text(
                                  "4 Beds",
                                  style: TextStyle(color: Colors.black38),
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
                                  "Bath",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.area_chart_rounded,
                                    color: Colors.green),
                                Text(
                                  "12 sqft",
                                  style: TextStyle(color: Colors.black38),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/paul.png"))),
                                ),
                                Text(
                                  "    John Adam",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Text("Ksh 6000", style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
