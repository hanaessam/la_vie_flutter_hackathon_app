import 'package:flutter/material.dart';
import 'package:la_vie_app/models/user_model.dart';

import '../constants.dart';

class ProfileInfo extends StatelessWidget {

  final dynamic data ;
  late User _user;
  ProfileInfo(this.data ,{Key? key}) : super(key: key){
    _user = User(data['firstName'], data['lastName'], baseUrl + data['imageUrl'], data['userPoints']);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset(_user.imageUrl)),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            '${_user.firstName} ${_user.lastName}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

