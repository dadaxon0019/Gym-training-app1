import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/auth.dart';
import 'package:flutter_application_1/models.dart';
import 'package:flutter_application_1/texts/app_medium_text.dart';
import 'package:flutter_application_1/texts/app_small_text.dart';
import 'package:flutter_application_1/texts/app_large_text.dart';
import 'package:flutter_application_1/screens/registr_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: 'Hello Dadaxon,'),
                    SizedBox(
                      height: 5,
                    ),
                    AppMeddiumText(text: 'Good Morning.'),
                  ],
                ),
                SizedBox(
                  height: 50,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
