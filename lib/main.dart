import 'package:flutter/material.dart';
import 'package:la_vie_app/views/screens/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Vie',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

