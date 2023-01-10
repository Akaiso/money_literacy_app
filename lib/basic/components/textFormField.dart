import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors/app_colors.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
    this.controller,
    required this.hintText,
    required this.errorText,
    this.validator,
  }) : super(key: key);

  final dynamic controller;
  final String hintText;
  final String errorText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kMainLightOrange, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          errorText: errorText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      textAlign: TextAlign.center,
    );
  }
}

// class TextFields {
//   final String errorText = '';
//   final String errorText2 = '';
//
//   textFormField(hintText, controller) {
//     return TextFormField(
//       controller: controller,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: kMainLightOrange, width: 2),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           hintText: hintText,
//           errorText: errorText2,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           )),
//       textAlign: TextAlign.center,
//     );
//   }
//
//   emailTextFormField(
//     hintText,
//     controller,
//   ) {
//     return TextFormField(
//       validator: (value) {},
//       // validator: (value) {
//       //   if (value!.contains('@') && value!.toString().contains('.')) {
//       //     return '';
//       //   }
//       //   if (!value.toString().contains('@') &&
//       //       !value.toString().contains('.')) {
//       //     return 'input a correct email address';
//       //   }
//       //   if (value.isEmpty) {
//       //     return 'field can not be empty';
//       //   } else if (value.length < 2) {
//       //     return 'field must have more than one character';
//       //   }
//       // },
//       textInputAction: TextInputAction.next,
//       controller: controller,
//       keyboardType: TextInputType.emailAddress,
//       decoration: InputDecoration(
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: kMainLightOrange, width: 2),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           hintText: hintText,
//           errorText: errorText,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           )),
//       textAlign: TextAlign.center,
//     );
//   }
//
//   passwordTextFormField(hintText, controller) {
//     return TextFormField(
//       obscureText: true,
//       controller: controller,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: kMainLightOrange, width: 2),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           hintText: hintText,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           )),
//       textAlign: TextAlign.center,
//     );
//   }
// }
