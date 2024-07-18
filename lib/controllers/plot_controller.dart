import 'package:get/get.dart';
import 'package:mm/data/repository/plot_repo.dart';

import 'package:mm/models/plot_model.dart';

class PlotController extends GetxController{
  final PlotRepo plotRepo;

  PlotController({required this.plotRepo});
  List<dynamic> _plotList = [];
  List<dynamic> get plotList => _plotList;

  bool _isLoaded =false;
  bool get isLoaded => _isLoaded;

    // ignore: unused_field
    int _quantity = 0;

  Future<void> getPlotList() async {
    Response response = await plotRepo.getPlotList();
    if (response.statusCode ==200) {
      print("kidogo tu");
      // print("This is response ${response.body}");
      _plotList =[];
      _plotList.addAll(Plot.fromJson(response.body).plots);
      print(_plotList);
      _isLoaded = true;
      update();
    }else {
      print("kosea");
      print("This is response ${response.statusCode}");
    }
  }
}