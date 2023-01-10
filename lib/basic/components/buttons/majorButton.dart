import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

InkWell MajorButton(onTap, String label) {
  return InkWell(
    onTap: onTap, // () {Get.to(()=>const AccessToken());},
    enableFeedback: true,
    excludeFromSemantics: true,
    child: Container(
      height: Get.width * 0.13,
      width: Get.width * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffF29400),
                Color(0xffF26600),
              ])),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.nunito(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}
