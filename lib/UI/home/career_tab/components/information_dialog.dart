import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:you_move_me/UI/components/common_button.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:video_player/video_player.dart';

showInformationDialog(BuildContext context) {
  showDialog(
      context: context,
      useSafeArea: false,
      builder: (context) {
        return InformationDialog();
      });
}

class InformationDialog extends StatefulWidget {
  const InformationDialog({Key? key}) : super(key: key);

  @override
  _InformationDialogState createState() => _InformationDialogState();
}

class _InformationDialogState extends State<InformationDialog> {
  late VideoPlayerController _controller;
  late BetterPlayerController _betterPlayerController;
  bool isLoading = true;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )..initialize().then((_) {
        isLoading = false;

        _controller.setLooping(true);
        _controller.play();
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
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Material(
        child: SafeArea(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lorem Ipum",
                        maxLines: 1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                      maxLines: 4,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lorem Ipum",
                        maxLines: 1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: BetterPlayer(
                          controller: _betterPlayerController,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lorem Ipum",
                        maxLines: 1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.picture_as_pdf,
                              color: primarySwatch[900],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Info about question.pdf",
                              style: TextStyle(
                                  color: primarySwatch[600],
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    CommonButton(
                      lable: "Continue",
                      ontap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("assets/images/demo.png"),
              //         fit: BoxFit.cover),
              //     color: Colors.white,
              //   ),
              // ),
              Positioned(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.close,
                      size: 24,
                    ),
                  ),
                ),
                right: 5,
                top: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
