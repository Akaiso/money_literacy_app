import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:google_fonts/google_fonts.dart';

import 'authentication/register.dart';

///Not in use because of the Flutter_Native_Splash added
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(milliseconds: 8000), () {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => RegistrationPage()));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: WillPopScope(
//         onWillPop: () async {
//           return false;
//         },
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           body: Container(
//             height: Get.height,
//             width: Get.width,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/images/png_jpg/lpbgimg.png"),
//                   fit: BoxFit.cover),
//             ),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: Get.height * 0.14,
//                     width: Get.height * 0.14,
//                     child: const Image(
//                       image: Svg('assets/images/svg/logo.svg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     'Your fun way to financial literacy',
//                     style: GoogleFonts.nunito(
//                         color: const Color(0xff666666),
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400),
//                   ),
//                   const SizedBox(
//                     height: 70,
//                     width: 700,
//                     child: Image(
//                       image: Svg('assets/images/svg/lpellipsis.svg'),
//                     ),
//                   ),
//                   const SizedBox(height: 100),
//                 ],
//               ),
//             ),
//           ),
//           bottomNavigationBar: SizedBox(
//               height: Get.height * 0.3,
//               width: Get.width * 0.3,
//               child: const Image(
//                 image: AssetImage('assets/images/png_jpg/wpimages.png'),
//               )),
//         ),
//       ),
//     );
//   }
// }
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder(
          // init: T,
          builder: (context) {
            return Stack(
              children: [],
            );
          },
        ));
  }
}

class Table extends StatefulWidget {
  Table(
      {Key? key,
        required this.color,
        required this.price,
        required this.locations})
      : super(key: key);
  Table.flee(this.color, this.locations, this.price);

  // Table{(required this.color, required this.price)

  // Table(this.name, this.color, this.price, this.locations);

  final Color color;
  final int price;
  final String locations;

  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<Table> {
  static String? name;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Table2 extends StatefulWidget {
  // const Table2({Key? key}) : super(key: key);
  Table table = Table(color: Colors.blue, price: 10, locations: 'locations');

  @override
  _Table2State createState() => _Table2State();
}

class _Table2State extends State<Table2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
