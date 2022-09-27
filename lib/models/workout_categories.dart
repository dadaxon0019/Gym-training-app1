import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/texts/app_medium_text.dart';
import 'package:flutter_application_1/texts/app_small_text.dart';
import 'package:flutter_application_1/training card/beginner_card.dart';
import 'package:flutter_application_1/training%20card/beginner_videos.dart/video_info/video_info.dart';
import 'package:get/get.dart';

class WorkoutCategories extends StatefulWidget {
  const WorkoutCategories({super.key});

  @override
  State<WorkoutCategories> createState() => _WorkoutCategoriesState();
}

class _WorkoutCategoriesState extends State<WorkoutCategories>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 28,
          decoration: BoxDecoration(
            color: Color.fromARGB(84, 80, 80, 80),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffD0FD3E),
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Color.fromARGB(255, 199, 210, 200),
            tabs: [
              Tab(
                  child: Text(
                'Beginner',
              )),
              Tab(
                child: Text('Intermediate'),
              ),
              Tab(
                child: Text('Advance'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.maxFinite,
          height: 160,
          child: TabBarView(
            controller: _tabController,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('img/categories_card_img_1.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(80, 0, 0, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppMeddiumText(text: 'Learn the Basic of Training'),
                        SizedBox(
                          height: 5,
                        ),
                        AppSmallText(
                          text: '06 Workouts  for Beginner',
                          color: const Color(0xffD0FD3E),
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => VideoInfo()));
                        }),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('img/categories_card_img_2.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 0, 0, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppMeddiumText(text: 'Learn the Basic of Training'),
                        SizedBox(
                          height: 5,
                        ),
                        AppSmallText(
                          text: '06 Workouts  for Beginner',
                          color: const Color(0xffD0FD3E),
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BeginnerCard()));
                      },
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('img/categories_card_img_3.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 0, 0, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppMeddiumText(text: 'Learn the Basic of Training'),
                        SizedBox(
                          height: 5,
                        ),
                        AppSmallText(
                          text: '06 Workouts  for Beginner',
                          color: const Color(0xffD0FD3E),
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BeginnerCard()));
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
