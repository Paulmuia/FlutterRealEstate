import 'package:flutter/material.dart';
import 'package:mm/pages/welcome_page.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    color: Colors.green,
                  ),
                  child: Center(child: Text('Welcome',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w700),)),
              
                ),
                Container(
                  height: 600,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 230,left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                       Text('Register',style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.w700),),
                       SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: TextField(
                                decoration: InputDecoration(
                                  hintText: ' Enter email',hintStyle: TextStyle(color:Colors.black, ),
                                  labelText: 'Enter email',
                                  prefixIcon: Icon(Icons.email,color: Colors.green),
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
                                  hintText: ' Enter username',hintStyle: TextStyle(color:Colors.black, ),
                                  labelText: 'Enter username',
                                  prefixIcon: Icon(Icons.email,color: Colors.green),
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
                                  hintText: ' Enter Password',hintStyle: TextStyle(color:Colors.black,fontWeight: FontWeight.w400 ),
                                  labelText: 'Enter Password',
                                  prefixIcon: Icon(Icons.email,color: Colors.green),
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
                      
                       SizedBox(height: 30,),
                       GestureDetector(
                         onTap: (){
                            print("...Go to login Screen");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => WelcomePage(),
                              ),
                            );
                          },
                         child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          height: 50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.green
                          ),
                          child: Center(
                            child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                          ),
                         ),
                       ),
                       Size
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