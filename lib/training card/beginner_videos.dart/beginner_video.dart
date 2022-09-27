import 'package:flutter/material.dart';
import 'package:flutter_application_1/texts/app_small_text.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  bool videoOn = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        VideoApp();
      },
      child: Container(
        height: 76,
        decoration: BoxDecoration(
            color: Color.fromARGB(84, 80, 80, 80),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/video_widget1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSmallText(text: 'Simple Warm-Up'),
                AppSmallText(text: 'Exercises'),
                AppSmallText(
                  text: '0:30',
                  color: Color(0xffD0FD3E),
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.only(right: 9),
              child: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/video1.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Demo',
        home: Scaffold(
            body: Container(
                width: double.infinity,
                height: 495,
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(_controller),
                      _ControlsOverlay(controller: _controller),
                      VideoProgressIndicator(
                        _controller,
                        allowScrubbing: true,
                        colors:
                            VideoProgressColors(playedColor: Colors.black38),
                      ),
                    ],
                  ),
                )),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(left: 40, top: 50),
            )));
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.controller})
      : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
      ],
    );
  }
}
