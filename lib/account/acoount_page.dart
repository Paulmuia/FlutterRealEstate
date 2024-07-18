import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
          automaticallyImplyLeading: false, 
      backgroundColor: Colors.green,

        title: const Center(child: Text('Profile',style: TextStyle(fontSize: 25,color: Colors.white),)),
      ),
      body: Container(
        width:double.maxFinite ,
        margin: const EdgeInsets.only(top: 40),
        child: Column(children: [
          const CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 60,
            backgroundImage: AssetImage('lib/assets/paul.jpg'),
          ),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 50,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                              BoxShadow(
                                color: Colors.grey, 
                                offset:
                                    Offset(0, 3),
                                blurRadius: 6, 
                                spreadRadius: 0, 
                              ),
                            ],
            ),
            
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10,right: 20),
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                child: const Icon(Icons.person,color: Colors.white,),
              ),
              const Text('Paul Muia',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300),)
            ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 50,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                              BoxShadow(
                                color: Colors.grey, 
                                offset:
                                    Offset(0, 3), 
                                blurRadius: 6, 
                                spreadRadius: 0, 
                              ),
                            ],
            ),
            
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10,right: 20),
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                child: const Icon(Icons.email,color: Colors.white,),
              ),
              const Expanded(child: Text('Paulmuia7511@gmail.com ',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300),))
            ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 50,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset:
                                    Offset(0, 3),
                                blurRadius: 6, 
                                spreadRadius: 0, 
                              ),
                            ],
            ),
            
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10,right: 20),
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                child: const Icon(Icons.phone,color: Colors.white,),
              ),
              const Text('+254717285384 ',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300),)
            ]),
          ),
          const SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 90,vertical: 10),
            height: 50,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset:
                                    Offset(0, 3),
                                blurRadius: 6, 
                                spreadRadius: 0,
                              ),
                            ],
            ),
            
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10,right: 20),
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
                child: const Icon(Icons.logout,color: Colors.white,),
              ),
              const Text('Log out ',style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.w700),)
            ]),
          ),
          
          
        ],),
      ),
    );
  }
}