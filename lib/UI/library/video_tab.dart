import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:video_player/video_player.dart';

class VideoTab extends StatefulWidget {
  String title;
  VideoTab({required this.title});
  @override
  _VideoTabState createState() => _VideoTabState();
}

class _VideoTabState extends State<VideoTab> {
  late VideoPlayerController _controller;
  late BetterPlayerController _betterPlayerController;
  bool isLoading = true;

  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )..initialize().then((_) {
        isLoading = false;

        _controller.setLooping(true);
        // _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    _betterPlayerController = BetterPlayerController(BetterPlayerConfiguration(
        controlsConfiguration: BetterPlayerControlsConfiguration(
      backgroundColor: Colors.white,
      progressBarPlayedColor: primarySwatch[800]!,
      controlBarHeight: 40,
      enableProgressText: false,
      enablePlayPause: false,
      enablePip: false,
      enableOverflowMenu: false,
      enableFullscreen: false,
      enableSkips: false,
    )));
    _betterPlayerController.setupDataSource(BetterPlayerDataSource.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          maxLines:1,
          overflow: TextOverflow.clip,
          style: TextStyle(
            color: primarySwatch[900],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BetterPlayer(
                  controller: _betterPlayerController,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Safe Driving tips of the week form jacob Wagner!",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ));
  }
}
