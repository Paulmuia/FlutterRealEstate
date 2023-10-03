import 'package:flutter/material.dart';

class DetailedHouse extends StatefulWidget {
  const DetailedHouse({super.key});

  @override
  State<DetailedHouse> createState() => _DetailedHouseState();
}

class _DetailedHouseState extends State<DetailedHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.deepOrange,
                  Colors.orange,
                  Colors.orange
                ]
            )
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
                SizedBox(width: 5,),
                Text('Back',style: TextStyle(color: Colors.white),),
                SizedBox(width: 250,),
                Icon(Icons.favorite,color: Colors.white,),
                SizedBox(width: 10,),
                Icon(Icons.ios_share,color: Colors.white,)

              ],
            ),
            Center(
              child:Text('Details',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  width: double.maxFinite,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage('lib/assets/houses.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 200,left: 280),
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.photo),
                      SizedBox(width: 10,),
                      Text('43',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey,
                  ),
                  width: 80,
                  height: 90,
                  child: Column(
                    children: [
                      SizedBox(height: 17,),
                      Icon(Icons.call,size: 40,),
                      Text('Call',style: TextStyle(fontSize:12,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey,
                  ),
                  width: 80,
                  height: 90,
                  child: Column(
                    children: [
                      SizedBox(height: 17,),
                      Icon(Icons.message,size: 40,),
                      Text('Message',style: TextStyle(fontSize:12,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey,
                  ),
                  width: 80,
                  height: 90,
                  child: Column(
                    children: [
                      SizedBox(height: 17,),
                      Icon(Icons.directions,size: 40,),
                      Text('Direcction',style: TextStyle(fontSize:12,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey,
                  ),
                  width: 80,
                  height: 90,
                  child: Column(
                    children: [
                      SizedBox(height: 17,),
                      Icon(Icons.share_outlined,size: 40,),
                      Text('Share',style: TextStyle(fontSize:12,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 40,
                    width: 120,
                    child: Center(
                      child: Text('Overview'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: 40,
                    width: 120,
                    child: Center(
                      child: Text('Features'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: 40,
                    width: 120,
                    child: Center(
                      child: Text('House value'),
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 5,right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,

              ),
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Text(
                    'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',
                  style: TextStyle(color: Colors.black,fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
