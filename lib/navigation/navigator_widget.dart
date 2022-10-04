import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/test_music.dart';
import 'package:flutter_application_1/training%20card/beginner_videos.dart/video_info/video_info.dart';

import '../screens/Directory/main_directory_page.dart';

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({super.key});

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  int index = 0;
  final screens = [VideoInfo(), VideoInfo()];
  @override
  final items = [
    ImageIcon(
      AssetImage("assets/Home.png"),
    ),
    Icon(Icons.music_note_outlined),
    Icon(Icons.book),
    Icon(Icons.settings),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1E),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromARGB(115, 0, 0, 0),
              blurRadius: 10,
            ),
          ],
        ),
        child: CurvedNavigationBar(
          index: index,
          color: Color.fromARGB(170, 208, 253, 62),
          backgroundColor: Color(0xff1C1C1E),
          height: 55,
          animationDuration: Duration(milliseconds: 350),
          items: items,
          onTap: (index) {
            if (mounted) setState(() => this.index = index);
          },
        ),
      ),
      body: IndexedStack(index: index, children: [
        HomePage(),
        TestMusic(),
        DirectoryPage(),
      ]),
    );
  }
}
