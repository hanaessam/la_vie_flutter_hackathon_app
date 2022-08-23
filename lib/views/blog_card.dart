import 'package:flutter/material.dart';
import 'package:la_vie_app/models/blog_model.dart';

import '../constants.dart';

class BlogCard extends StatelessWidget {
  final int index;
  final dynamic data;
  late Blog _blog;
  BlogCard(this.index, this.data){
    _blog= Blog(data['name'], data['description'],'https://lavie.orangedigitalcenteregypt.com' + data['imageUrl'], data['waterCapacity'], data['sunLight'], data['temperature']);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: MediaQuery.of(context).size.height * .18,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * .03),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * .05),
          boxShadow:const [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 0.8,
              offset: Offset(2.0,2.0),
              blurRadius: 7.0,
            ),
          ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(_blog.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(child: Column(
            children: [
              Text(_blog.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
              SizedBox(height: 15,),
              Text(_blog.description)
            ],
          ))

        ],
      ),);
  }
}
