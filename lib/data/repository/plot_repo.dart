import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:mm/data/repository/api_client.dart';
import 'package:mm/widgets/app_constants.dart';

class PlotRepo extends GetxService{
  final ApiClient apiClient;
  PlotRepo({required this.apiClient});

  Future<Response> getPlotList() async {
    print("reached");
    return await apiClient.getData(AppConstants.PLOT_URI);
  }
}