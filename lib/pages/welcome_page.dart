import 'package:flutter/material.dart';
import 'package:mm/pages/home_page.dart';
import 'package:mm/pages/verificationscreen.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.deepPurple,
              Colors.purple,
              Colors.purple
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Padding(
                padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("Login here",style: TextStyle(color: Colors.white,fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome back",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 70),
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60),bottomLeft: Radius.circular(90),bottomRight: Radius.circular(90))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Color.fromRGBO(225, 95, 27, .3),
                              blurRadius: 20,
                              offset: Offset(0,10)
                            )]
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email or phone number',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ) ,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ) ,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                        GestureDetector(
                          onTap: (){
                            print("...Go to login Screen");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VerificationScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Forgot password', style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(height: 40,),
                        GestureDetector(
                          onTap: (){
                            print("...Go to login Screen");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.deepOrange
                          ),
                            child: Center(
                              child: Text('Login', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Text('Continue with social media',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 50,),
                        Row(
                          children: [
                            Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(image: AssetImage('lib/assets/fb.png',),height: 20,width:20,),
                                  Text('Facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            ),
                            SizedBox(width: 30,),
                            Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(image: AssetImage('lib/assets/google.png',),height: 20,width:20,),
                                  Text('Google',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            )
                          ],
                        )
                      ],
                    ),

                  ),
                )),
          ],
        ),
      ),
    );
  }
}
