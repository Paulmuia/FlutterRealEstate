// import 'package:get/get.dart';
// import 'package:mm/assets/repository/auth_repo.dart';
// import 'package:mm/widgets/app_constants.dart';

// class ApiClient<T> extends GetConnect implements GetxService{
//   late String token;
//   final String appBaseUrl;

//   late AuthRepo authRepo;

//    late Map<String, String> _mainHeaders;
//   ApiClient({required this.appBaseUrl}){
//     baseUrl = appBaseUrl;
//     timeout = Duration(minutes: 30);
//     token=AppConstants.TOKEN;

//     _mainHeaders ={
//       'Content-type':'application/json; charset=UTF-8',
//       'Authorization': 'Bearer $token'
//     };

//     Future<Response> getData(String uri) async {
//       try{
//         Response response = await get(uri);
//       }
//     }
    
//   }

// }

