import 'package:flutter/material.dart';
import 'package:mm/pages/house_contents.dart';

class DetailedHouse extends StatefulWidget {
  const DetailedHouse({super.key});

  @override
  State<DetailedHouse> createState() => _DetailedHouseState();
}

class _DetailedHouseState extends State<DetailedHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text('Back'),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Details',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.favorite_border_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.ios_share_rounded)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: (){
                         print("...Go to login Screen");
                         Navigator.of(context).push(
                           MaterialPageRoute(
                             builder: (context) => HouseContents(),
                           ),
                         );
                       },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 200,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage('lib/assets/house1.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 160, left: 280),
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Row(children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.home),
                        SizedBox(
                          width: 5,
                        ),
                        Text('24')
                      ]),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  width: double.maxFinite,
                  //color: Colors.orange,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Color of the shadow
                                offset:
                                    Offset(0, 3), // Offset of the shadow (x, y)
                                blurRadius: 6, // Amount of blur
                                spreadRadius: 0, // Amount of spread
                              ),
                            ],
                          ),
                          child: Column(children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.call,
                              size: 30,
                              color: const Color.fromRGBO(76, 175, 80, 1),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Call',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                        ),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Color of the shadow
                                offset:
                                    Offset(0, 3), // Offset of the shadow (x, y)
                                blurRadius: 6, // Amount of blur
                                spreadRadius: 0, // Amount of spread
                              ),
                            ],
                          ),
                          child: Column(children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.message,
                              size: 30,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Message',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                        ),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Color of the shadow
                                offset:
                                    Offset(0, 3), // Offset of the shadow (x, y)
                                blurRadius: 6, // Amount of blur
                                spreadRadius: 0, // Amount of spread
                              ),
                            ],
                          ),
                          child: Column(children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.directions_outlined,
                              size: 30,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Direction',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                        ),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Color of the shadow
                                offset:
                                    Offset(0, 3), // Offset of the shadow (x, y)
                                blurRadius: 6, // Amount of blur
                                spreadRadius: 0, // Amount of spread
                              ),
                            ],
                          ),
                          child: Column(children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.share_location_outlined,
                              size: 30,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                        )
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: double.maxFinite,
                  //color: Colors.orange,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Color of the shadow
                                offset:
                                    Offset(0, 3), // Offset of the shadow (x, y)
                                blurRadius: 6, // Amount of blur
                                spreadRadius: 0, // Amount of spread
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Overview',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Color of the shadow
                                offset:
                                    Offset(0, 3), // Offset of the shadow (x, y)
                                blurRadius: 6, // Amount of blur
                                spreadRadius: 0, // Amount of spread
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Features',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Color of the shadow
                                offset:
                                    Offset(0, 3), // Offset of the shadow (x, y)
                                blurRadius: 6, // Amount of blur
                                spreadRadius: 0, // Amount of spread
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'House Value',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'And now that you’ve spent time writing compelling listings, how do you get more eyeballs on thess grm? We help you sell your clients’ homes faster and close more deals by integrating IDX listings into your website. It’s called Listings Pro, and it.',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
                ),
                Container(
                  height: 30,
                  width: double.maxFinite,
                  //color: Colors.red,
                  child: Row(children: [
                    Icon(
                      Icons.star_outlined,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '49.2 K Reviews',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey, // Color of the shadow
                            offset: Offset(0, 3), // Offset of the shadow (x, y)
                            blurRadius: 6, // Amount of blur
                            spreadRadius: 0, // Amount of spread
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Top Rated',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined)
                        ],
                      ),
                    )
                  ]),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 300,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, // Color of the shadow
                        offset: Offset(0, 3), // Offset of the shadow (x, y)
                        blurRadius: 6, // Amount of blur
                        spreadRadius: 0, // Amount of spread
                      ),
                    ],
                  ),
                  child: Text('And now that you’ve spent time writing compelling listings, how do you get more eyeballs on them? We help you sell your clients homes faster and close more deals by integrating IDX listings into your website. Its called Listings Pro, and its now available for both existing and new OutboundEngine customers. For current customers, click here to set up a call with your Account Manager to add Listings Pro to your website. If youre new to OutboundEngine, schedule a free demo today to see how we can help youow that you’ve spent time writing compelling listings, how do you get more eyeballs on them? We help you sell your clients homes faster and close more deals by integrating IDX listings into your website. Its called Listings Pro, and its now available for both existing and new OutboundEngine customers. For current customers, click here to set up a call with your Account Manager to add Listings Pro to your website. If youre new to OutboundEngine, schedule a free demo today to see how we can help your real estate business grr real estate business grow',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
