import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

InkWell MajorDBttn( onTap, String label) {
  return InkWell(
    onTap: onTap, // () {Get.to(()=>const AccessToken());},
    child: Container(
      height: Get.width * 0.13,
      width: Get.width * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff93BD67),
                Color(0xff53960C),
              ])),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.nunito(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}
