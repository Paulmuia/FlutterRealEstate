import 'package:flutter/material.dart';

class DetailedHouse extends StatelessWidget {
  const DetailedHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey[600],
                    ),
                    Text(
                      "Back",
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                Text(
                  "Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 22,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.ios_share_outlined,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
          ),

          // lower body
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 210,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("lib/assets/house2.png"),
                    fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Icon(Icons.image_rounded), Text("24")],
                  ),
                )
              ],
            ),
          ),

          // call, massage row
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: 90,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.call), Text("Call")],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: 90,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.message_rounded), Text("Message")],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: 90,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                      
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.directions_walk), Text("Directions")],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: 90,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.rotate_90_degrees_ccw), Text("Share")
                    ],
                  ),
                ),
              ],
            ),
          ),


          // overview, features row
          Container(
            child: Row(
              children: [
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
