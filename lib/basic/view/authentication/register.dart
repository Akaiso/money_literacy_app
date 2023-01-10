import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_africa_kids/basic/control/authControl.dart';
import '../../components/buttons/majorButton.dart';
import 'package:vibration/vibration.dart';
import '../../components/colors/app_colors.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  //const  RegistrationPage({Key? key}) : super(key: key);
  // final TextEditingController emailController;
  Color dynamicColor = Colors.black;

  final GlobalKey<FormState> _formKey = GlobalKey();
  final emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final AuthControl vSignUp = AuthControl();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(_printLatestValue);
    numberController.addListener(() {
      print(_printLatestNumValue);
    });
  }

  void _printLatestValue() {
    print(emailController.text);
  }

  void _printLatestNumValue() {
    print(numberController.text);
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    WillPopScope(
        child: RegistrationPage(),
        onWillPop: () async {
          return false;
        });
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
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
                        'Register',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900, fontSize: 32),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: Get.width * 0.7,
                        child: Text(
                            'Enter your parent\'s or guardian\'s email address and phone number',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff666666))),
                      ),
                      const SizedBox(height: 20),
                      Form(
                        key: _formKey,
                        child: Column(children: [
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (!GetUtils.isEmail(value!)) {
                                return 'please enter a vaild email address';
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kMainLightOrange, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Example@gmail.com',
                                errorText: '',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          //  textFields.textFormField('09000000000', controller2),
                          TextFormField(
                            controller: numberController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter some text';
                              } else if (value.length != 11) {
                                return 'please enter 11 digits';
                              }
                              if (value.contains(' ')) {
                                return 'please delete empty space(s)';
                              } else if (!value.isPhoneNumber) {
                                return 'please enter a valid phone number';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kMainLightOrange, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: '09000000000',
                                //  errorText: '',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          MajorButton(() {
                            // AuthControl().validateSignUp();
                            if (_formKey.currentState!.validate()) {
                              Get.snackbar('Message sent ', '',
                                  shouldIconPulse: true,
                                  duration: const Duration(seconds: 2),
                                  backgroundColor: Colors.transparent);
                              Vibration.vibrate(duration: 80);
                              Get.toNamed(
                                "/access_token",
                              )?.then((value) => {
                                emailController.clear(),
                                numberController.clear()
                              });
                            }
                          }, 'Submit'),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              height: Get.height * 0.2,
                              width: Get.width * 0.5,
                              child: InkWell(
                                  onTap: () {
                                    Get.toNamed('/access_token')?.then(
                                            (value) => {
                                          emailController.clear(),
                                          numberController.clear()
                                        });
                                  },
                                  child: Text(
                                    'Already registered or have a token?',
                                    style: GoogleFonts.nunito(
                                        color: dynamicColor,
                                        decoration: TextDecoration.underline,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,
                                  )))
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
