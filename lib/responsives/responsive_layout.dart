// import 'package:flutter/material.dart';
// import 'dimensions.dart';
// class ResponsiveLayout extends StatelessWidget {
//   const ResponsiveLayout({ Key? key, required this.mobileBody, required this.desktopBody, required List<Widget> children }) : super(key: key);
//   final Widget mobileBody;
//   final Widget desktopBody;
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) { 
//         if(constraints.maxWidth < 600 ){
//           return mobileBody;
//         }else {
//           return desktopBody;
//         }
//        },
      
//     );
//   }
// }