import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/buttons/majorButton.dart';
import '../../components/colors/app_colors.dart';
import '../../components/textFormField.dart';

class AccessAge extends StatefulWidget {
  const AccessAge({Key? key}) : super(key: key);
  @override
  State<AccessAge> createState() => _AccessAgeState();
}

class _AccessAgeState extends State<AccessAge> {
  final GlobalKey<FormState> ageFormKey = GlobalKey();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/png_jpg/lpbgimg.png"),
                fit: BoxFit.cover),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'How old are you?',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900, fontSize: 32),
                  ),
                  Form(
                    key: ageFormKey,
                    child: Column(children: [
                      const SizedBox(height: 20),
                      //  textFields.textFormField('0', controller),
                      TextFormField(
                        controller: ageController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'field must not be empty';
                          } else if (value.length > 2 ||
                              int.parse(value) == 0) {
                            return 'seriously?';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: kMainLightOrange, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: '0',
                            errorText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 200),
                      MajorButton(() {
                        if (ageFormKey.currentState!.validate() == true) {
                          Get.toNamed("/intro_v")
                              ?.then((value) => {ageController.clear()});
                        }
                      }, 'Submit')
                    ]),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
