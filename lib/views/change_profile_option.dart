import 'package:flutter/material.dart';

import '../constants.dart';

class ChangeProfileOption extends StatelessWidget {
  final String option;
  ChangeProfileOption(this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          changeIcon(),
          Text('Change $option', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          Icon(Icons.arrow_forward, color: kLavieDarkGreen, size: 35,),
        ],),
      width: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey),
          boxShadow: [BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            offset: Offset(2.0,2.0),
            blurRadius: 6.0,
          )]
      ),
    );
  }
}

