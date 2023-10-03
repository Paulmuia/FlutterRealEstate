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
        height: 1000,
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
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Login', style: TextStyle(color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Welcome',
                    style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
                SizedBox(height: 20,),
                Stack(
                  children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter email address',
                              labelText: 'Enter email address',
                              prefixIcon: Icon(
                                Icons.email, color: Colors.blue,),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 1.0,
                                    color: Colors.orange,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 1.0,
                                    color: Colors.orange,
                                  )
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),

                              ),

                            ),
                          ),
                        ),

                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              labelText: 'Enter Password',
                              prefixIcon: Icon(Icons.lock, color: Colors.blue,),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 1.0,
                                    color: Colors.orange,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 1.0,
                                    color: Colors.orange,
                                  )
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),

                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () {
                            print("...Go to login Screen");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 80),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.deepOrange
                            ),
                            child: Center(
                              child: Text('Login', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(height: 10,),
                        Divider(
                          color: Colors.blue,
                          height: 2.0,
                          indent: 10.0,
                          endIndent: 10.0,
                        ),
                        SizedBox(height: 20,),
                        Text('Continue with social media'),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              30),
                                          color: Colors.black,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'lib/assets/fb.png')
                                          )

                                      ),
                                    ),
                                    Text(' Facebook', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              30),
                                          color: Colors.black,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'lib/assets/google.png')
                                          )

                                      ),
                                    ),
                                    Text('Google', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}