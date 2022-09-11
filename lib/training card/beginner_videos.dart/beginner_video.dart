import 'package:flutter/material.dart';
import 'package:flutter_application_1/texts/app_small_text.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
