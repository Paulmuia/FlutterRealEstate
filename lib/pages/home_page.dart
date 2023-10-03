import 'package:flutter/material.dart';
import 'package:mm/pages/detailed_house.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 70),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Icon(Icons.menu),
                      Icon(Icons.notifications_on_sharp),
                    ],),
                  ),
                ),
                SizedBox(height: 10,),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Hi, There!',style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                              color: Colors.grey
                            ),
                            height: 50,
                            width: 350,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
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
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.grey,
                          ),
                          width: 70,
                          height: 70,
                          child: Column(
                            children: [
                              SizedBox(height: 4,),
                              Icon(Icons.home,size: 40,),
                              Text('House',style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.yellow,
                          ),
                          width: 70,
                          height: 70,
                          child: Column(
                            children: [
                              SizedBox(height: 4,),
                              Icon(Icons.apartment,size: 40,),
                              Text('Apartment',style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.orange,
                          ),
                          width: 70,
                          height: 70,
                          child: Column(
                            children: [
                              SizedBox(height: 4,),
                              Icon(Icons.house,size: 40,),
                              Text('FarmHouse',style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.green,
                          ),
                          width: 70,
                          height: 70,
                          child: Column(
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
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
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
                         child: Text(
                           ' View all',
                           style: TextStyle(
                               color: Colors.black,
                               fontSize: 15,
                               fontWeight: FontWeight.bold),),
                       ),
                     ),
                  ],

                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    print("...Go to login Screen");
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailedHouse(),
                      ),
                    );
                  },
                  child: Container(
                    //color: Colors.red,
                    height: 280,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: 10,
                        itemBuilder: (context,index){
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.blue,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('lib/assets/house.png',)
                              )
                            ),
                            height: 160,

                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            height: 120,
                            width: 290,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text('Grey house',style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.black54,),
                                       SizedBox(width: 10,),
                                       Text('Nchiiru, NY 100',style: TextStyle(color: Colors.black, fontSize: 15),)

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
                                      Text('Paul Muia',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
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
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Recommended for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height:500,
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                      itemBuilder: (context,index){
                    return Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.blue,
                          image: DecorationImage(
                            image: AssetImage('lib/assets/houses.png'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
