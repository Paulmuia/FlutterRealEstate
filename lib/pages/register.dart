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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text('Welcome',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Stack(
                children: [
                  Container(
                      height: 580,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        color: Colors.white,
                      ),
                  ),
                   Column(
                      children: [
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter email address',
                              labelText: 'Enter email address',
                              prefixIcon: Icon(Icons.email,color: Colors.blue,),
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
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),

                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter username',
                              labelText: 'Enter username',
                              prefixIcon: Icon(Icons.person,color: Colors.blue,),
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
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),

                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              labelText: 'Enter Password',
                              prefixIcon: Icon(Icons.lock,color: Colors.blue,),
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
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),

                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Confirm password',
                              labelText: 'Confirm Password',
                              prefixIcon: Icon(Icons.lock,color: Colors.blue,),
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
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),

                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
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
                            margin: EdgeInsets.symmetric(horizontal: 80),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.deepOrange
                            ),
                            child: Center(
                              child: Text('Register', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an account.'),
                              SizedBox(width: 5,),
                              GestureDetector(
                                  onTap: (){
                                    print("...Go to login Screen");
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => WelcomePage(),
                                      ),
                                    );
                                  },
                                  child: Text('Login here',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),))
                            ],
                          ),
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
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.black,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('lib/assets/fb.png')
                                      )

                                    ),
                                  ),
                                  Text(' Facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            SizedBox(width: 30,),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('lib/assets/google.png')
                                        )

                                    ),
                                  ),
                                  Text('Google',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ],
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
    );
  }
}
