import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:mm/data/api_client.dart';
import 'package:mm/widgets/app_constants.dart';

class FeaturedRepo extends GetxService{
  final ApiClient apiClient;
  FeaturedRepo({required this.apiClient});

  Future<Response> getFeaturedList() async {
    print("reached");
    return await apiClient.getData(AppConstants.FEATURED_URI);
  }
}