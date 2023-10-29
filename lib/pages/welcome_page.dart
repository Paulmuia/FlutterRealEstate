import 'package:flutter/material.dart';
import 'package:mm/pages/homebottom%20navigation%20bar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 270,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                    color: Color.fromARGB(255, 2, 35, 63),
                  ),
                  child: Center(child: Text('Welcome',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w700),)),
              
                ),
                Container(
                  height: 350,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 230,left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                       Text('Login',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 2, 35, 63),fontWeight: FontWeight.w700),),
                       SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter First name',
                                  labelText: 'Enter First Name',labelStyle: TextStyle(color:Color.fromARGB(255, 2, 35, 63),),
                                  prefixIcon: Icon(Icons.person,color: Color.fromARGB(255, 2, 35, 63),),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  border:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                       
                                  ),
                       
                                ),
                              ),
                       ),
                       
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter ID Number',
                                  labelText: 'Enter ID Number',labelStyle: TextStyle(color:Color.fromARGB(255, 2, 35, 63),),
                                  prefixIcon: Icon(Icons.person,color: Color.fromARGB(255, 2, 35, 63),),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  border:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                       
                                  ),
                       
                                ),
                              ),
                       ),
                       
                       SizedBox(height: 40,),
                       GestureDetector(
                         onTap: (){
                            print("...Go to login Screen");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomeBottomNavigationBar(),
                              ),
                            );
                          },
                         child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          height: 50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color.fromARGB(255, 2, 35, 63),
                          ),
                          child: Center(
                            child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                          ),
                         ),
                       )
                    ],
                  ),
                ),
                
              ],
            )
          ],
        ),
      )
    );;
  }
}