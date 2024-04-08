import 'package:get/get.dart';
import 'package:mm/controllers/featured_controller.dart';
import 'package:mm/controllers/plot_controller.dart';
import 'package:mm/data/api_client.dart';
import 'package:mm/data/repository/featured_repo.dart';
import 'package:mm/data/repository/plot_repo.dart';
import 'package:mm/widgets/app_constants.dart';

Future<void> init() async{
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => FeaturedRepo(apiClient: Get.find()));

  Get.lazyPut(() => PlotRepo(apiClient: Get.find()));


  Get.lazyPut(() => FeaturedController(featuredRepo: Get.find()));

  
  Get.lazyPut(() => PlotController(plotRepo: Get.find()));
}