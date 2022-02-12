// import 'dart:convert';
// import 'dart:html';
// // import 'package:blogapp/constant.dart';
// // import 'package:blogapp/models/user.dart';
// // import "package:blogapp/models/api_response.dart";
// import 'package:gestion_pharmacie_de_garde/model/user.dart';
// // import 'package:gestion_pharmacie_de_garde/constant.dart';
// import 'package:http/http.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../constant.dart';

// Future<ApiResponse> login (String email, String password) async {
//   ApiResponse apiResponse = ApiResponse();
//   try{
//     var http;
//     final response = await http.tableau(
//       Uri.parse(loginURL),
//       Headers:{'Accept':'application/json'},
//       body:{'email':email,'password':password}      
//     );
//     switch(response.statusCode){
//       case 200: 
//       apiResponse.data = User.fromJson(jsonDecode(response.body));
//       break;
//       case 422:
//       final errors = jsonDecode(response.body)['errors'];
//       apiResponse.error = errors[errors.keys.elementAt(0)][0];
//       break;
//       case 403:
//       apiResponse.error = jsonDecode(response.body)['message'];
//       break;
//       default:
//       apiResponse.error = somethingWentWrong;
//       break;  
//     } 
//   }
//   catch(e){
//      apiResponse.error = serverError;
//   }
//   return apiResponse;
// }
// Future<ApiResponse> registerUser (String name, String email, String password) async {
//   ApiResponse apiResponse = ApiResponse();
//   try{
//     var http;
//     final response = await http.tableau(
//       Uri.parse(registerURL),
//       Headers:{'Accept':'application/json'},
//       body:{
//         'name':name,
//         'email':email,
//         'password':password,
//         'password_confirmation':password
//         }      
//     );
//     switch(response.statusCode){
//       case 200: 
//       apiResponse.data = User.fromJson(jsonDecode(response.body));
//       break;
//       case 422:
//       final errors = jsonDecode(response.body)['errors'];
//       apiResponse.error = errors[errors.keys.elementAt(0)][0];
//       break;
//       default:
//       apiResponse.error = somethingWentWrong;
//       break;  
//     } 
//   }
//   catch(e){
//      apiResponse.error = serverError;
//   }
//   return apiResponse;
// }
// Future<ApiResponse> getUserDetail () async {
//   ApiResponse apiResponse = ApiResponse();
//   try{
//     var http;
//     String? token = await getToken();
//     final response = await http.get(
//       Uri.parse(userrURL),
//       Headers:{
//         'Accept':'application/json',
//         'Authorization':'Bearer $token'
//       });
      
//     switch(response.statusCode){
//       case 200: 
//       apiResponse.data = User.fromJson(jsonDecode(response.body));
//       break;
//       case 401:
//       apiResponse.error = unauthorized;
//        break; 
//       default:
//       apiResponse.error = somethingWentWrong;
//       break;  
//     } 
//   }
//   catch(e){
//      apiResponse.error = serverError;
//   }
//   return apiResponse;
// }
// class ApiResponse {
//   set data(User data) {}

//   set error(String error) {}
// }
// Future<String?> getToken() async{
//   SharedPreferences pref = await SharedPreferences.getInstance();
//   return pref.getString('token')?? '';
// }
// Future<int> getUserId() async{
//   SharedPreferences pref = await SharedPreferences.getInstance();
//   return pref.getInt('userId')?? 0;
// }
// Future<bool> logout() async{
//   SharedPreferences pref = await SharedPreferences.getInstance();
//   return await pref.remove('token');
// }