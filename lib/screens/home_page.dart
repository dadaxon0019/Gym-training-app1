import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/models/card_widget_model.dart';
import 'package:flutter_application_1/models/workout_categories.dart';
import 'package:flutter_application_1/texts/app_medium_text.dart';
import 'package:flutter_application_1/texts/app_small_text.dart';
import 'package:flutter_application_1/texts/app_large_text.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  // final User? user = Auth().currentUser;

  // Future<void> signOut() async {
  //   await Auth().signOut();
  // }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'Good Morning! ',
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize: 20, color: Colors.grey)),
                          ),
                          TextSpan(
                            text: '👋',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ])),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Dadaxon',
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                fontSize: 28,
                                color: whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/avatar.jpg'),
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppMeddiumText(text: 'Today Workout Plan'),
                    AppSmallText(text: 'Mon 26 Apr', color: Color(0xffD0FD3E)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                CardWidget(),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppMeddiumText(text: 'Workout Categories'),
                    AppSmallText(text: 'See All', color: Color(0xffD0FD3E))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                WorkoutCategories(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
