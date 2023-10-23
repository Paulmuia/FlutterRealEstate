import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/controllers/plot_controller.dart';
import 'package:mm/models/plot_model.dart';
import 'package:mm/widgets/app_constants.dart';

class HouseContents extends StatefulWidget {
  const HouseContents({super.key});

  @override
  State<HouseContents> createState() => _HouseContentsState();
}

class _HouseContentsState extends State<HouseContents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child:Column(
            children: [
              SizedBox(height: 10,),
              Row(
                    children: [
                      Icon(Icons.close_outlined),
                      
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        'Details',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.ios_share_rounded)
                    ],
                  ),
                  Expanded(
                    child: GetBuilder<PlotController>(builder: (plotProducts){
                      return Container(
                      child: ListView.builder(
                        itemCount: plotProducts.plotList.length,
                      
                        itemBuilder: (context,index){
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                            height: 220,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.blue,
                              image: DecorationImage(image: NetworkImage(AppConstants.BASE_URL+plotProducts.plotList[index].image),
                              fit: BoxFit.cover
                              )
                            ),
                          );
                    
                      }),
                    );
                    })
                  )
            ],
          ),
          ),
      ),
    );
  }
}