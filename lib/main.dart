import 'package:flutter/material.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/splash_screen.dart';

import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Vie',
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

