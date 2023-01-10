import 'package:flutter/material.dart';
import 'package:money_africa_kids/basic/view/authentication/access_age.dart';
import 'package:money_africa_kids/basic/view/authentication/access_token.dart';
import 'package:money_africa_kids/basic/view/authentication/register.dart';
import 'package:money_africa_kids/basic/view/e404.dart';
import 'package:money_africa_kids/basic/view/intermediate_pages/welcome_back.dart';
import 'package:money_africa_kids/basic/view/onboarding/intro_video.dart';
import 'package:money_africa_kids/basic/view/splash_screen.dart';
import '../view/intermediate_pages/error_page1.dart';
import '../view/onboarding/video_play.dart';

// Route<dynamic> Function(RouteSettings) onGenerateRoute
Route<dynamic> appRouter(RouteSettings settings) {
  switch (settings.name) {
    case "/errorP1":
      return MaterialPageRoute(
        builder: (context) => const ErrorPage1(),
      );
  // case "/splash":
  //   return MaterialPageRoute(
  //     builder: (context) => const SplashScreen(),
  //   );
    case "/register":
      return MaterialPageRoute(
        builder: (context) => RegistrationPage(),
      );
    case "/access_token":
      return MaterialPageRoute(
        builder: (context) => const AccessToken(),
      );
    case "/access_age":
      return MaterialPageRoute(
        builder: (context) => const AccessAge(),
      );
    case "/intro_v":
      return MaterialPageRoute(
        builder: (context) => const IntroVideoPlayerSplashScreen(),
      );
    case "/welcome_back":
      return MaterialPageRoute(builder: (context) => const WelcomeBack());

    default:
      return MaterialPageRoute(
        builder: (context) => const E404(),
      );
  }
}
