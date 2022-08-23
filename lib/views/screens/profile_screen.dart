import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/models/APIs/user_api.dart';

import '../change_profile_option.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
            children: [

              Center(child: Image.asset('images/profile.png')),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Mayar Mohamed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(25),
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kLavieLightGreen),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 45,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green[800], shape: BoxShape.circle),
                            ),
                          ),
                          Text("You have 30 points", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Edit profile" ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    ChangeProfileOption('Name'),
                    ChangeProfileOption('Email'),
                  ],
                ),
              )
            ],
          ),
      );
  }
}

