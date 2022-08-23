import 'package:flutter/material.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/models/forum_model.dart';
import 'package:la_vie_app/models/product_model.dart';

class NotificationCard extends StatelessWidget {

  final int index;
  final dynamic data ;
  late Forum _forum;
  NotificationCard(this.index, this.data ,{Key? key}) : super(key: key){
    _forum = Forum(data['title'], data['description'], baseUrl + data['imageUrl']);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .5,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * .01),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.5,
              offset: Offset(0,2.0),
              blurRadius: 1.0,
            ),
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,

              child: Image(image: NetworkImage(_forum.imageUrl),)),
          Text(
            _forum.title.toString().toUpperCase(),
            textAlign: TextAlign.start,
            style:  TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
             Text(
              _forum.description,
              textAlign: TextAlign.start,
              style:  TextStyle(
                color: Colors.grey[800],
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}

