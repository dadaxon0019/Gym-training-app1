import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/registr_page.dart';
import 'package:flutter_application_1/screens/widget_tree.dart';
import 'package:flutter_application_1/texts/app_large_text.dart';

class OnBordingScreen1 extends StatefulWidget {
  const OnBordingScreen1({super.key});

  @override
  State<OnBordingScreen1> createState() => _OnBordingScreen1State();
}

class _OnBordingScreen1State extends State<OnBordingScreen1> {
  List images = [
    'onBordingImg_1.png',
    'onBordingImg_2.png',
    'onBordingImg_3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index1) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: Color(0xff000000),
              child: Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.maxFinite,
                              height: 460,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('img/' + images[index1]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(50))),
                            ),
                            Container(
                              width: double.maxFinite,
                              height: 460,
                              color: Color.fromARGB(51, 69, 65, 65),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        AppLargeText(
                            text: 'Meet your coach,\nstart your journey'),
                        SizedBox(
                          height: 70,
                        ),
                        index1 == 2
                            ? Container(
                                width: 180,
                                height: 45,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        primary: Color(0xffD0FD3E)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Start Now',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                        Icon(
                                          Icons.play_arrow,
                                          color: Colors.black,
                                        )
                                      ],
                                    )),
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(3, (indexDots) {
                            return Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: index1 == indexDots ? 36 : 16,
                              height: 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index1 == indexDots
                                      ? Color(0xffD0FD3E)
                                      : Color(0xff3A3A3C)),
                            );
                          }),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
