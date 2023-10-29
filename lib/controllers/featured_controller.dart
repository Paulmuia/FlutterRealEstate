import 'package:get/get.dart';
import 'package:mm/data/repository/featured_repo.dart';
import 'package:mm/models/featured_model.dart';

class FeaturedController extends GetxController{
  final FeaturedRepo featuredRepo;

  FeaturedController({required this.featuredRepo});
  List<dynamic> _featuredList = [];
  List<dynamic> get featuredList => _featuredList;

  bool _isLoaded =false;
  bool get isLoaded => _isLoaded;

    int _quantity = 0;

  Future<void> getFeaturedList() async {
    Response response = await featuredRepo.getFeaturedList();
    if (response.statusCode ==200) {
      print("kidogo tu");
      // print("This is response ${response.body}");
      _featuredList =[];
     _featuredList.addAll(Featured.fromJson(response.body).rooms);
      print(_featuredList);
      _isLoaded = true;
      update();
    }else {
      print("kosea");
      print("This is response ${response.statusCode}");
    }
  }
}