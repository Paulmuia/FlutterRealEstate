
import 'package:get/get.dart';
import 'package:mm/widgets/app_constants.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}){
    baseUrl=appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders ={
      'Content-type':'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token'
    };
  }
  Future<Response> getData(String uri) async{
    try{
      Response response =await get(uri);
      print("Tried");
      return response;
    }catch(e){
      print("error trying");
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}