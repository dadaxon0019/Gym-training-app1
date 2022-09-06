import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
// import 'package:video_player/video_player.dart';

class BeginnerCard extends StatefulWidget {
  const BeginnerCard({Key? key}) : super(key: key);

  @override
  State<BeginnerCard> createState() => _BeginnerCard();
}

class _BeginnerCard extends State<BeginnerCard> {
  bool videoOn = true;
  bool starOnMain = false;
  bool starOn1 = false;
  bool starOn2 = false;
  bool starOn3 = false;
  bool starOn4 = false;
  bool starOn5 = false;
  num schet = 4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff263238),
      body: Container(
        padding: EdgeInsets.symmetric(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: 320,
                    child: Image(
                      image: AssetImage('img/beginner_card.png'),
                      fit: BoxFit.fill,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Mount Bromo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(children: [
                          Text(
                            '$schet',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                starOnMain = !starOnMain;
                                print(starOnMain);
                                this.setState(() {
                                  starOnMain == true
                                      ? schet = schet + 0.5
                                      : schet = schet - 0.5;
                                });
                              },
                              child: starOnMain
                                  ? Icon(
                                      Icons.star,
                                      color: Color(0xffE58F3F),
                                      size: 28,
                                    )
                                  : Icon(
                                      Icons.star_border,
                                      color: Color(0xffE58F3F),
                                      size: 28,
                                    ))
                        ])
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 31),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage('img/icon1.png')),
                          Text(
                            'Difficulty',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffD6D2D2)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Easy',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffffffff)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('img/icon2.png')),
                          Text(
                            'Time Needed',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffD6D2D2)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '30 - 60 min',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffffffff)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('img/icon3.png')),
                          Text(
                            'Ticket',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffD6D2D2)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '50 K',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffffffff)),
                          )
                        ],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  videoOn
                      ? SizedBox(
                          height: 4,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onTap: () {
                                  starOn1 = !starOn1;
                                  this.setState(() {
                                    starOn1 == true
                                        ? schet = schet + 0.5
                                        : schet = schet - 0.5;
                                  });
                                },
                                child: starOn1
                                    ? Icon(
                                        Icons.star,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )
                                    : Icon(
                                        Icons.star_border,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )),
                            InkWell(
                                onTap: () {
                                  starOn2 = !starOn2;
                                  print(starOn2);
                                  this.setState(() {
                                    starOn2 == true
                                        ? schet = schet + 0.5
                                        : schet = schet - 0.5;
                                  });
                                },
                                child: starOn2
                                    ? Icon(
                                        Icons.star,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )
                                    : Icon(
                                        Icons.star_border,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )),
                            InkWell(
                                onTap: () {
                                  starOn3 = !starOn3;
                                  print(starOn3);
                                  this.setState(() {
                                    starOn3 == true
                                        ? schet = schet + 0.5
                                        : schet = schet - 0.5;
                                  });
                                },
                                child: starOn3
                                    ? Icon(
                                        Icons.star,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )
                                    : Icon(
                                        Icons.star_border,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )),
                            InkWell(
                                onTap: () {
                                  starOn4 = !starOn4;
                                  print(starOn4);
                                  this.setState(() {
                                    starOn4 == true
                                        ? schet = schet + 0.5
                                        : schet = schet - 0.5;
                                  });
                                },
                                child: starOn4
                                    ? Icon(
                                        Icons.star,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )
                                    : Icon(
                                        Icons.star_border,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )),
                            InkWell(
                                onTap: () {
                                  starOn5 = !starOn5;
                                  print(starOn5);
                                  this.setState(() {
                                    starOn5 == true
                                        ? schet = schet + 0.5
                                        : schet = schet - 0.5;
                                  });
                                },
                                child: starOn5
                                    ? Icon(
                                        Icons.star,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )
                                    : Icon(
                                        Icons.star_border,
                                        color: Color(0xffE58F3F),
                                        size: 28,
                                      )),
                          ],
                        ),
                  videoOn
                      ? Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Mount Bromo, is an active volcano and is an active volcano and part of the Tengger massif in East Java, Indonesia. At 2,329 meters it is not the highest peak of the massif, but is the best known... Read More',
                                style: TextStyle(
                                    letterSpacing: 0.8,
                                    height: 1.7,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffD6D2D2)),
                              )
                            ],
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        height: 37,
                        width: 147,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: BorderSide(
                                color: Color(0xff5EDFFF).withOpacity(0.6),
                                width: 2,
                              ),
                              primary: Color(0xff031F2B),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage('img/button_icon1.png')),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Site Map',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff5EDFFF)))
                              ],
                            )),
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        height: 37,
                        width: 147,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: BorderSide(
                                color: Color(0xff031F2B).withOpacity(0.6),
                                width: 2,
                              ),
                              primary: Color(0xff5EDFFF),
                            ),
                            onPressed: () {
                              videoOn = !videoOn;
                              this.setState(() {});
                            },
                            child: Text(videoOn ? 'Play Video' : 'Description',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff031F2B)))),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class VideoApp extends StatefulWidget {
//   @override
//   _VideoAppState createState() => _VideoAppState();
// }

// class _VideoAppState extends State<VideoApp> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset('assets/videos/video1.mp4');

//     _controller.addListener(() {
//       setState(() {});
//     });
//     _controller.setLooping(true);
//     _controller.initialize().then((_) => setState(() {}));
//     _controller.play();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Video Demo',
//         home: Scaffold(
//             body: Container(
//                 width: double.infinity,
//                 height: 495,
//                 child: AspectRatio(
//                   aspectRatio: _controller.value.aspectRatio,
//                   child: Stack(
//                     alignment: Alignment.bottomCenter,
//                     children: <Widget>[
//                       VideoPlayer(_controller),
//                       _ControlsOverlay(controller: _controller),
//                       VideoProgressIndicator(
//                         _controller,
//                         allowScrubbing: true,
//                         colors:
//                             VideoProgressColors(playedColor: Colors.black38),
//                       ),
//                     ],
//                   ),
//                 )),
//             floatingActionButton: Padding(
//               padding: const EdgeInsets.only(left: 40, top: 50),
//             )));
//   }
// }

// class _ControlsOverlay extends StatelessWidget {
//   const _ControlsOverlay({Key? key, required this.controller})
//       : super(key: key);

//   final VideoPlayerController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         AnimatedSwitcher(
//           duration: const Duration(milliseconds: 50),
//           reverseDuration: const Duration(milliseconds: 200),
//           child: controller.value.isPlaying
//               ? const SizedBox.shrink()
//               : Container(
//                   color: Colors.black26,
//                   child: const Center(
//                     child: Icon(
//                       Icons.play_arrow,
//                       color: Colors.white,
//                       size: 100.0,
//                       semanticLabel: 'Play',
//                     ),
//                   ),
//                 ),
//         ),
//         GestureDetector(
//           onTap: () {
//             controller.value.isPlaying ? controller.pause() : controller.play();
//           },
//         ),
//       ],
//     );
//   }
// }
