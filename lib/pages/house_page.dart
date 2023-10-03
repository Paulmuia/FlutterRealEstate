import 'package:flutter/material.dart';

class HousePage extends StatefulWidget {
  const HousePage({super.key});

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              child: Container(
                //color: Colors.green,
                child: ListView.builder(
                  itemCount: 20,
                    itemBuilder: (context,index){
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 13,right: 13,top: 15,),
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.orange,
                          image: DecorationImage(
                            image: AssetImage('lib/assets/houses.png'),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white
                        ),
                        width: 350,
                        height: 140,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: Text('Grey house',style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  height: 30,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.red,),
                                      Text('4.5',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)

                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on,color: Colors.black54,),
                                  SizedBox(width: 10,),
                                  Text('Nchiiru, NY 100',style: TextStyle(color: Colors.black, fontSize: 15),),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.bed,color: Colors.green),
                                  Text('4 Beds'),
                                  SizedBox(width: 15,),
                                  Icon(Icons.bathroom_rounded,color: Colors.green),
                                  Text('2 Bath'),
                                  SizedBox(width: 15,),
                                  Icon(Icons.square_outlined,color: Colors.green),
                                  Text('10.2 sqft'),
                                ],
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                            image: AssetImage('lib/assets/paul.png'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    height: 45,
                                    width: 45,
                                  ),
                                  SizedBox(width: 20,),
                                  Text('Paul Muia',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 60,),
                                  Text('Ksh 40,000',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
