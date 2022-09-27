import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/texts/app_medium_text.dart';

class DirectoryPage extends StatefulWidget {
  const DirectoryPage({super.key});

  @override
  State<DirectoryPage> createState() => _DirectoryPageState();
}

class _DirectoryPageState extends State<DirectoryPage> {
  List directoryInfo = [];
  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/directory.json')
        .then((value) => {
              setState((() {
                directoryInfo = json.decode(value);
              }))
            });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C1E),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Справочник'),
          centerTitle: true,
          toolbarHeight: 20,
          backgroundColor: Color(0xff1C1C1E),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemCount: directoryInfo.length,
          itemBuilder: (_, int index) {
            return GestureDetector(
              onTap: () {
                debugPrint(index.toString());
                setState(() {});
              },
              child: _buildCard(index),
            );
          },
        ),
      ),
    );
  }

  _buildCard(int index) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 25),
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(directoryInfo[index]['imgUrl']),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 125,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(202, 15, 68, 112),
              Colors.transparent,
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppMeddiumText(
                text: directoryInfo[index]['title'],
              )
            ],
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Container(
              height: 125,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {},
              )),
        ),
      ],
    );
  }
}
