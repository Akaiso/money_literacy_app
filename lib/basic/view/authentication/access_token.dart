import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/buttons/majorButton.dart';
import '../../components/colors/app_colors.dart';

class AccessToken extends StatefulWidget {
  const AccessToken({Key? key}) : super(key: key);

  @override
  State<AccessToken> createState() => _AccessTokenState();
}

class _AccessTokenState extends State<AccessToken> {
  final GlobalKey<FormState> tokenFormKey = GlobalKey();
  final TextEditingController tokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WillPopScope(
        child: const AccessToken(),
        onWillPop: () async {
          return false;
        });
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/png_jpg/lpbgimg.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enter your token',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900, fontSize: 32),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: Get.width * 0.7,
                      child: Text('Ask your parent or guardian for this',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff666666))),
                    ),
                    Form(
                      key: tokenFormKey,
                      child: Column(children: [
                        const SizedBox(height: 20),
                        // textFields.emailTextFormField(
                        //     'token', controller1, () {}),
                        TextFormField(
                          controller: tokenController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'field must not be empty';
                            } else if (GetUtils.isAlphabetOnly(
                                value.toString())) {
                              return 'must be alphanumeric';
                            } else if (GetUtils.isNumericOnly(
                                value.toString())) {
                              return 'must be alphanumeric';
                            } else if (value.trim().length != 9) {
                              return 'must be 9 characters';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: kMainLightOrange, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'AZ89448TC',
                              errorText: '',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 200),
                        MajorButton(() {
                          if (tokenFormKey.currentState!.validate() == true)
                            Get.toNamed("/access_age")
                                ?.then((value) => tokenController.clear());
                        }, 'Submit'),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
