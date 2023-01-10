import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:money_africa_kids/basic/components/textFormField.dart';
import 'package:money_africa_kids/basic/view/authentication/register.dart';

class AuthControl extends GetxController {
  RegistrationPage reg = RegistrationPage();

  // validateSignUp() {
  //   TextFields textFields = TextFields();
  //   textFields.errorText = '';
  //   if (!GetUtils.isEmail(.text.trim())) {
  //     textFields.errorText = "Please add a valid email address";
  //   } else if (GetUtils.isLengthLessThan(reg.controller2.text.trim(), 11)) {
  //     textFields.errorText2 = 'incorrect phone number';
  //   }
  // }

  validate(value) {}
}
