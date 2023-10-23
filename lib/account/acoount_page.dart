import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
          automaticallyImplyLeading: false, 
      backgroundColor: Colors.green,

        title: Center(child: Text('Profile',style: TextStyle(fontSize: 25,color: Colors.white),)),
      ),
      body: Container(
        width:double.maxFinite ,
        margin: EdgeInsets.only(top: 40),
        child: Column(children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 60,
            backgroundImage: AssetImage('lib/assets/paul.jpg'),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 50,
            width: double.maxFinite,
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
            
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 20),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                child: Icon(Icons.person,color: Colors.white,),
              ),
              Text('Paul Muia',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300),)
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 50,
            width: double.maxFinite,
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
            
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 20),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                child: Icon(Icons.email,color: Colors.white,),
              ),
              Expanded(child: Text('Paulmuia7511@gmail.com ',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300),))
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 50,
            width: double.maxFinite,
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
            
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 20),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                child: Icon(Icons.phone,color: Colors.white,),
              ),
              Text('+254717285384 ',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300),)
            ]),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 90,vertical: 10),
            height: 50,
            width: double.maxFinite,
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
            
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 20),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
                child: Icon(Icons.logout,color: Colors.white,),
              ),
              Text('Log out ',style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.w700),)
            ]),
          ),
          
          
        ],),
      ),
    );
  }
}