import 'package:flutter/material.dart';

class FiteredHouses extends StatefulWidget {
  const FiteredHouses({super.key});

  @override
  State<FiteredHouses> createState() => _FiteredHousesState();
}

class _FiteredHousesState extends State<FiteredHouses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitered Houses',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic),),
        leading:const CircleAvatar(
          backgroundColor: Colors.white,
          child:Center(child: Icon(Icons.person,color: Colors.green,),),
        ),
        backgroundColor: Colors.green,
        actions:const  [
          Icon(Icons.search,color: Colors.white,size: 25,),
          Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 25,),
          Icon(Icons.more_vert,color: Colors.white,size: 25,)
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              padding:const  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                borderRadius:const  BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 1,color: Colors.green),
                image:const  DecorationImage(image: AssetImage('lib/assets/goo.png'),fit: BoxFit.cover)
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 100,
              child: ListView.builder(itemBuilder: (context,index){
                return Container(
                  height: 100,
                  width: double.maxFinite,
                  margin:const  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}