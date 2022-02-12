// // import 'package:flutter/material.dart';
// // import 'package:gestion_pharmacie_de_garde/network/api.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:flutter_auth/network/api.dart';
// // import 'dart:convert';
// // import 'login.dart';

// // class Home extends StatefulWidget{
// //   @override
// //   _HomeState createState() => _HomeState();
// // }

// // class _HomeState extends State<Home>{
// //   String name='';

// //   @override
// //   void initState(){
// //     super.initState();
// //     _loadUserData();
// //   }

// //   _loadUserData() async{
// //     SharedPreferences localStorage = await SharedPreferences.getInstance();
// //     // var user = jsonDecode(localStorage.getString('admin'));

// //     // if(user != null) {
// //     //   setState(() {
// //     //     name = user['name'];
// //     //   });
// //     // }
// //   }

// //   @override
// //   Widget build(BuildContext context){
// //     return Scaffold(
// //       backgroundColor: Color(0xff151515),
// //       appBar: AppBar(
// //         title: Text('Home'),
// //         backgroundColor: Color(0xff151515),
// //         automaticallyImplyLeading: false,
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.power_settings_new),
// //             onPressed: (){
// //               logout();
// //             },
// //           )
// //         ],
// //       ),
// //       body: SafeArea(
// //         child: Container(
// //           padding: EdgeInsets.all(15),
// //           child: Column(
// //             children: [
// //               Row(
// //                 children: [
// //                   Text('Hello, ',
// //                     style: TextStyle(
// //                       fontSize: 20,
// //                     ),
// //                   ),
// //                   Text('${name}',
// //                     style: TextStyle(
// //                       fontSize: 20,
// //                       fontWeight: FontWeight.bold
// //                     ),
// //                   ),
// //                 ],
// //               )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   void logout() async{
// //     var res = await Network().getData('/logout');
// //     var body = json.decode(res.body);
// //     if(body['success']){
// //       SharedPreferences localStorage = await SharedPreferences.getInstance();
// //       localStorage.remove('user');
// //       localStorage.remove('token');
// //       Navigator.pushReplacement(
// //           context,
// //           MaterialPageRoute(builder: (context)=>Login()));
// //     }
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:gestion_pharmacie_de_garde/constant.dart';
// import 'package:gestion_pharmacie_de_garde/main.dart';
// import '/services/user_service.dart';
// import 'package:gestion_pharmacie_de_garde/services/user_service.dart';
// import 'login.dart';

// class Loading extends StatefulWidget {
//   const Loading({ Key? key }) : super(key: key);

//   @override
//   _LoadingState createState() => _LoadingState();
// }
 
// class _LoadingState extends State<Loading> {
//   void _loadUserInfo() async {
//     String? token = await getToken();
//     if(token == ''){
//      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()),(route) => false);
//     }
//     // else{
//     //   ApiResponse response = await getUserDetail();
//     //   if(response.error == null){
//     //      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>MyHomePage(title: '',)),(route) => false);
//     //   }
//     //   else if (response.error == unauthorized){
//     //      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()),(route) => false);
//     //   }
//     //   else {
//     //     ScaffoldMessenger.of(context.showSnackBar(SnackBar(
//     //       content: Text('${response.error}'),
//     //       )));
//     //   }
//     // }
//   }
//   @override
//   void initStat(){
//     _loadUserInfo();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       color: Colors.white,
//       child: CircularProgressIndicator(),
//     );
//   }
// }