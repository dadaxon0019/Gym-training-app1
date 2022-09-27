import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/musicPage.dart';

class MusicWidget extends StatefulWidget {
  const MusicWidget({super.key, required this.music});
  final Musics music;

  @override
  State<MusicWidget> createState() => _MusicWidgetState(music);
}

class _MusicWidgetState extends State<MusicWidget> {
  int refresh = 4;
  final Musics movie;
  _MusicWidgetState(this.movie);

  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();

    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state) {
      if (mounted)
        setState(() {
          isPlaying = state == PlayerState.playing;
        });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      if (mounted)
        setState(() {
          duration = newDuration;
        });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      if (mounted)
        setState(() {
          position = newPosition;
        });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    String url = movie.mp3Url;
    audioPlayer.setSourceUrl(url);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  double currentvol = 0.5;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1E),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                movie.imgUrl,
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              movie.name,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              movie.mp3Name,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
              thumbColor: Color(0xffD0FD3E),
              activeColor: Color(0xffD0FD3E),
              inactiveColor: Color.fromARGB(209, 82, 81, 81),
              min: 0,
              max: duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(),
              onChanged: (value) async {
                final position = Duration(seconds: value.toInt());
                await audioPlayer.seek(position);

                await audioPlayer.resume();
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    formatTime(position),
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  Text(
                    formatTime(duration - position),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  color: Color(0xffD0FD3E),
                  icon: Icon(Icons.skip_previous),
                  iconSize: 50,
                  onPressed: () {},
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color.fromARGB(209, 82, 81, 81),
                  child: IconButton(
                    color: Color(0xffD0FD3E),
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                    ),
                    iconSize: 50,
                    onPressed: () async {
                      if (isPlaying) {
                        await audioPlayer.pause();
                      } else {
                        await audioPlayer.resume();
                      }
                    },
                  ),
                ),
                IconButton(
                  color: Color(0xffD0FD3E),
                  icon: Icon(Icons.skip_next),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
