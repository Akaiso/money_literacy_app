import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_africa_kids/basic/components/buttons/majorButton.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  _WelcomeBackState createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const Svg('assets/images/svg/happy_coin.svg'),
              height: Get.height * 0.3,
              width: Get.height * 0.5,
            ),
            SizedBox(
              height: Get.height * 0.06,
            ),
            SizedBox(
                height: Get.height * 0.1,
                width: Get.width * 0.5,
                child: Text(
                  'Hi, you are welcome back',
                  style: GoogleFonts.nunito(
                      fontSize: 23, fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: Get.height * 0.05,
            ),
            MajorButton(() {}, 'Continue')
          ],
        ),
      ),
    ));
  }
}
