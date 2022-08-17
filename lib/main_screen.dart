import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/home_screen.dart';
import 'package:la_vie_app/notification_screen.dart';
import 'package:la_vie_app/plant_screen.dart';
import 'package:la_vie_app/profile_screen.dart';
import 'package:la_vie_app/scan_qr_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;
  final List<Widget> screens = [
    PlantScreen(),
    ScanQRScreen(),
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  final List<Widget> items = [
    Icon(
      Ionicons.leaf_outline,
    ),
    Icon(
      Ionicons.scan_sharp,
    ),
    Icon(
      Ionicons.home_outline,
    ),
    Icon(
      Ionicons.notifications_outline,
    ),
    Icon(
      Ionicons.person_outline,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          body: screens[index],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 7,
                  blurRadius: 10,
                  offset: Offset(5, 3), // changes position of shadow
                ),
              ],
            ),
            child: CurvedNavigationBar(
              items: items,
              index: index,
              onTap: (index) => setState(() {
                this.index = index;
              }),
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: kLavieGreen,
              key: navigationKey,
            ),
          )),
    );
  }
}
