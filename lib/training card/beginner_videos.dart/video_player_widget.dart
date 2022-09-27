import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/texts/app_medium_text.dart';
import 'package:flutter_application_1/texts/app_small_text.dart';

class MuscMainPage extends StatefulWidget {
  const MuscMainPage({Key? key}) : super(key: key);

  @override
  State<MuscMainPage> createState() => _MuscMainPage();
}

class _MuscMainPage extends State<MuscMainPage> {
  static const IconData local_fire_department_sharp =
      IconData(0xea8c, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1E),
      body: ListView(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  width: double.infinity,
                  height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/beginner_card.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppMeddiumText(text: 'Day 01 - Warm Up'),
                SizedBox(
                  height: 8,
                ),
                AppSmallText(
                  text: '04 Workouts for Beginner',
                  color: Color(0xffD0FD3E),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 8),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(84, 80, 80, 80),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                          ),
                          AppSmallText(text: '60 min')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 8),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(84, 80, 80, 80),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_fire_department_sharp,
                            color: Colors.white,
                          ),
                          AppSmallText(text: '350 Cal')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  child: Row(
                    children: [
                      Flexible(
                        child: Column(children: [
                          AppSmallText(
                              text:
                                  'Want your body to be healthy. Join our program with directions according to body’s goals. Increasing physical strength is the goal of strenght training. Maintain body fitness by doing physical exercise at least 2-3 times a week. ')
                        ]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                // ListView.builder(
                //   itemBuilder: (context, index) {
                //     return VideoWidget();
                //   },
                //   itemCount: 8,
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final lowPoint = size.height - 20;
    final highPoint = size.height - 40;
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
