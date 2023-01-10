import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_africa_kids/basic/components/buttons/majorButton.dart';
import 'error_page2.dart';

class ErrorPage1 extends StatelessWidget {
  const ErrorPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: Svg('assets/images/svg/sad_coin.svg'),
              height: Get.height * 0.2,
              width: Get.width * 0.5,
            ),
            Container(
              height: Get.height * 0.03,
            ),
            SizedBox(
                height: Get.height * 0.1,
                width: Get.width * 0.4,
                child: Text(
                  "Oh! sorry this app is not for your age",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 16),
                  textAlign: TextAlign.center,
                )),
            MajorButton(() {
              Get.to(() => const ErrorPage2());
              // Get.back();
            }, 'Close')
          ],
        ),
      ),
    ));
  }
}
