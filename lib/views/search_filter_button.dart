import 'package:flutter/material.dart';

import '../constants.dart';

class SearchFilterButton extends StatelessWidget {
  String label;
  SearchFilterButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * .2,
      height: MediaQuery.of(context).size.height * .05,
      decoration: BoxDecoration(
        color: kLavieGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey[700],
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),),
    );
  }
}

