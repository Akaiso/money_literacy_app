import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_africa_kids/basic/components/buttons/majorDButton.dart';
import 'package:money_africa_kids/basic/components/buttons/majorButton.dart';

class ErrorPage2 extends StatelessWidget {
  const ErrorPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const Svg('assets/images/svg/sad_coin.svg'),
              height: Get.height * 0.2,
              width: Get.width * 0.5,
            ),
            Container(
              height: Get.height * 0.03,
            ),
            SizedBox(
                height: Get.height * 0.1,
                width: Get.width * 0.7,
                child: Text(
                  "Oh! sorry this app is not for your age, kindly download the money africa adult app",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 16),
                  textAlign: TextAlign.center,
                )),
            Container(
              height: Get.height * 0.03,
            ),
            MajorDBttn(() {}, 'Download'),
            SizedBox(
              height: Get.height * 0.04,
            ),
            MajorButton(() {
              Get.back();
            }, 'Close')
          ],
        ),
      ),
    ));
  }
}
