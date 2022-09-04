import 'package:flutter/material.dart';
import 'package:flutter_application_1/texts/app_small_text.dart';

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
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('img/categories_card_img_1.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('img/categories_card_img_2.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('img/categories_card_img_3.png'),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
