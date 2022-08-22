import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/views/screens/home_screen.dart';
import 'package:la_vie_app/views/screens/notification_screen.dart';
import 'package:la_vie_app/views/screens/plant_screen.dart';
import 'package:la_vie_app/views/screens/profile_screen.dart';
import 'package:la_vie_app/views/screens/scan_qr_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;
  final List<Widget> screens = [
    const PlantScreen(),
    const ScanQRScreen(),
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  final List<Widget> items = [
    const Icon(
      Ionicons.leaf_outline,
    ),
    const Icon(
      Ionicons.scan_sharp,
    ),
    const Icon(
      Ionicons.home_outline,
    ),
    const Icon(
      Ionicons.notifications_outline,
    ),
    const Icon(
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
                  offset: const Offset(5, 3), // changes position of shadow
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
