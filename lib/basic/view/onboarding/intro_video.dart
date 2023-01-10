import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:money_africa_kids/basic/components/buttons/majorButton.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class IntroVideo extends StatefulWidget {
//   const IntroVideo({Key? key}) : super(key: key);
//
//   @override
//   _IntroVideoState createState() => _IntroVideoState();
// }
//
// class _IntroVideoState extends State<IntroVideo> {
//   Widget introVideoPlaceholder = const Image(
//     image: AssetImage('assets/images/png_jpg/introVideo.png'),
//   );
//
//   late VideoPlayerController _controller;
//   late Future<void> _initializeVideoPlayerFuture;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // _controller = VideoPlayerController.network(
//     //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
//     _controller = VideoPlayerController.network(
//         'https://www.youtube.com/watch?v=5iRXZrFDFCA');
//     _initializeVideoPlayerFuture = _controller.initialize();
//
//     Future.delayed(const Duration(seconds: 1), () {
//       //setState(() {});
//       Future vp;
//       // Future<VideoPlayerController> cont;
//       Future cont;
//       Get.to(() => IntroVideoPlayerSplashScreen(), arguments: [
//         cont = _controller as Future,
//         vp = _initializeVideoPlayerFuture
//       ]);
//       const Duration(seconds: 2);
//     });
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _controller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           child: Icon(
//               _controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
//           onPressed: () {
//             setState(() {
//               if (_controller.value.isPlaying) {
//                 _controller.pause();
//               } else {
//                 _controller.play();
//               }
//             });
//           },
//         ),
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             // SizedBox(height: Get.height * 0.2,),
//             FutureBuilder(
//                 future: _initializeVideoPlayerFuture,
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.done) {
//                     return AspectRatio(
//                       aspectRatio: _controller.value.aspectRatio,
//                       child: VideoPlayer(_controller),
//                     );
//                   } else {
//                     return const Center(child: CircularProgressIndicator());
//                   }
//                 })
//           ],
//         )),
//       ),
//     );
//   }
// }
//
// class IntroVideoPlayer extends StatefulWidget {
//   const IntroVideoPlayer({Key? key}) : super(key: key);
//
//   @override
//   _IntroVideoPlayerState createState() => _IntroVideoPlayerState();
// }
//
// class _IntroVideoPlayerState extends State<IntroVideoPlayer> {
//   @override
//   Widget build(BuildContext context) {
//     dynamic args = Get.arguments;
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Container(
//             child: FutureBuilder(
//                 future: args[0], //_initializeVideoPlayerFuture,
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.done) {
//                     return AspectRatio(
//                       aspectRatio: args[1].value.aspectRatio,
//                       child: VideoPlayer(args[1]),
//                     );
//                   } else {
//                     return const Center(child: CircularProgressIndicator());
//                   }
//                 }),
//           ),
//         ),
//       ),
//     );
//   }
// }

class IntroVideo extends StatefulWidget {
  const IntroVideo({Key? key}) : super(key: key);

  @override
  _IntroVideoState createState() => _IntroVideoState();
}

class _IntroVideoState extends State<IntroVideo> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const url = 'https://youtu.be/5iRXZrFDFCA';
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          mute: false, //is video sound playing?
          loop: false, //is same video repeated?
          autoPlay: true, //is video played when initialized?
          showLiveFullscreenButton: true,
        ));

    controller.load(YoutubePlayer.convertUrlToId(url)!);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(controller: controller),
          builder: (context, player) {
            return Scaffold(
              body: Center(
                child: Column(
                  children: [
                    player,
                    SizedBox(
                      height: Get.height * 0.3,
                    ),
                    MajorButton(() {}, 'Skip >>'),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
