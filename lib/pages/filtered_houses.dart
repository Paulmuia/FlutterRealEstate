import 'package:flutter/material.dart';

class FilteredHouses extends StatefulWidget {
  const FilteredHouses({super.key});

  @override
  State<FilteredHouses> createState() => _FilteredHousesState();
}

class _FilteredHousesState extends State<FilteredHouses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 108, 113, 189),

      body: SafeArea(
        child: Column(children: [
          Container(
            height: 200,
            width: double.maxFinite,
            
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1,color: Colors.green),
              borderRadius:const  BorderRadius.all(Radius.circular(10))
            ),
          )
        ],)
        ),
      
    );
  }
}