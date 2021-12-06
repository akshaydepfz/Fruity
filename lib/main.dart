import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:fruity/screens/login_screen.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.green.shade300),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green,
        primaryColorLight: Colors.green,
        primaryColorDark: Colors.green,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: HomeScreen(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double hieght = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.green.shade100,
//       body: Container(
//         child: Stack(
//           children: [
//             Container(
//               height: hieght,
//               child: Image(
//                 image: AssetImage('assets/images/fruit_girl.png'),
//               ),
//             ),
//             Positioned(
//               bottom: 0,
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 height: 240.0,
//                 width: width,
//                 decoration: BoxDecoration(
//                   color: Colors.green.shade500,
//                   borderRadius: BorderRadius.vertical(
//                       top: Radius.elliptical(
//                           MediaQuery.of(context).size.width, 60.0)),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     NeumorphicText(
//                       'Buy Groceries Easily With Us..',
//                       textStyle: NeumorphicTextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),

//                     SizedBox(
//                       height: 5,
//                     ),
//                     NeumorphicText(
//                       'Rich experience and helps them search from a wide variety of products.',
//                       textStyle: NeumorphicTextStyle(fontSize: 13),
//                     ),
//                     // Text(
//                     //   'Rich experience and helps them search from a wide variety of products.',
//                     //   textAlign: TextAlign.center,
//                     //   style:
//                     //       TextStyle(color: Colors.grey.shade400, fontSize: 13),
//                     // ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     NeumorphicButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => LoginScreen()));
//                       },
//                       style: NeumorphicStyle(
//                         shape: NeumorphicShape.concave,
//                         boxShape: NeumorphicBoxShape.stadium(),
//                       ),
//                       padding: const EdgeInsets.all(12.0),
//                       child: Center(
//                         child: Text(
//                           'Get Started',
//                           style: TextStyle(color: Colors.green.shade300),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
