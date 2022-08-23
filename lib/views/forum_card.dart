import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/models/forum_model.dart';
import 'package:la_vie_app/models/product_model.dart';

import '../models/user_model.dart';

class ForumCard extends StatelessWidget {

  final int index;
  final dynamic data ;
  late Forum _forum;
  ForumCard(this.index, this.data ,{Key? key}) : super(key: key){
    _forum = Forum(data['title'], data['description'], baseUrl + data['imageUrl'], data['ForumLikes'].length, data['ForumComments'].length, data['user']);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.height * .5,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * .05),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
          color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(_forum.userForum.firstName),
          ],),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              _forum.title.toString(),
              textAlign: TextAlign.start,
              style:  TextStyle(
                color: kLavieGreen,
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
             Padding(
               padding: const EdgeInsets.all(10),
               child: Text(
                _forum.description,
                style:  TextStyle(
                  color: Colors.grey[800],
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
            ),
             ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(_forum.imageUrl),
                  fit: BoxFit.cover),),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              Icon(Icons.thumb_up_alt_outlined, color: Colors.grey,),
              Text(' ${_forum.ForumLikes} Likes', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
              Icon(Icons.comment_outlined, color: Colors.grey,),
              Text(' ${_forum.ForumComments} Comments', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
            ],),
          )
        ],

      ),
    );
  }
}

