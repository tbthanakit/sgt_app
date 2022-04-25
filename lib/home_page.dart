import 'package:sgt_app/constants/color_constants.dart';
import 'package:sgt_app/constants/pen_icons.dart';
import 'package:sgt_app/daimoku_recorder_page.dart';
import 'package:sgt_app/feeds_page.dart';
import 'package:sgt_app/padcast_page.dart';
import 'package:sgt_app/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:sgt_app/soka_information_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: ColorConstants.bondiBlueColor,
        unselectedItemColor: ColorConstants.altoGrayColor,
        currentIndex: selectedPage,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headphones),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.daimoku),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
      body: IndexedStack(
        index: selectedPage,
        children: [
          FeedsPage(),
          PodcastPage(),
          DaimokuRecorderPage(),
          SokaInformationPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
