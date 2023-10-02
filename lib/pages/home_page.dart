import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [
        Colors.pink,
        Colors.white30,
        Colors.purpleAccent,
        Colors.pinkAccent,
        ]
    )
    ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Padding(
                padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text('Register',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.orange),),
                  SizedBox(height: 10,),
                  Text('Welcome',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 100),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(90)),
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(20),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.red
                        ),
                        child: Column(
                          children: [

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
