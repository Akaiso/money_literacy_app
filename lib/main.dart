//@dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:money_africa_kids/basic/router/app_router.dart';
import 'package:flutter/services.dart';

void main() {
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(systemNavigationBarColor: Colors.black));
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: GetMaterialApp(
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textSelectionTheme:
                const TextSelectionThemeData(cursorColor: Color(0xffF29400))),
        debugShowCheckedModeBanner: false,
        title: "money africa mobile app",
        onGenerateRoute: appRouter,
        initialRoute: "/register",
      ),
    );
  }
}
