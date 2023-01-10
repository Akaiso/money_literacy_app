import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'intro_video.dart';

class IntroVideoPlayerSplashScreen extends StatefulWidget {
  const IntroVideoPlayerSplashScreen({Key? key}) : super(key: key);

  @override
  _IntroVideoPlayerSplashScreenState createState() =>
      _IntroVideoPlayerSplashScreenState();
}

class _IntroVideoPlayerSplashScreenState
    extends State<IntroVideoPlayerSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const IntroVideo());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Flexible(
              flex: 1,
              child: Image(
                image: AssetImage('assets/images/png_jpg/introVideo.png'),
              )),
        ),
      ),
    );
  }
}

// FutureBuilder(
// future: args[0], //_initializeVideoPlayerFuture,
// builder: (context, snapshot) {
// if (snapshot.connectionState == ConnectionState.done) {
// return AspectRatio(
// aspectRatio: args[1].value.aspectRatio,
// child: VideoPlayer(args[1]),
// );
// } else {
// return const Center(child: CircularProgressIndicator());
// }
// })
