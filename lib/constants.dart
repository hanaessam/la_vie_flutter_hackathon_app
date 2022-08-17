import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:100),
      width: MediaQuery.of(context).size.width * 0.35,
      child: Image.asset('images/logopresentation.png'),
    );
  }
}


const kLavieGreen = Color(0xFF1ABC00);
const kLavieGrey = Color(0xFFF8F8F8);
