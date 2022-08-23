import 'dart:async';

import 'package:flutter/material.dart';
import 'package:la_vie_app/models/APIs/forums_api.dart';
import 'package:la_vie_app/views/notification_card.dart';

import '../../models/APIs/user_api.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late StreamController _streamController;
  late Stream _stream;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController();
    _stream = _streamController.stream;
    getNotifications();
  }

  getNotifications() async {
    var response = await ForumsApi().getForumsNotifications();
    _streamController.add(response);
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var myData = [];
            myData = snapshot.data as List<dynamic>;
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                      itemCount: myData.length,
                      itemBuilder: (context, i) => Center(
                        child: NotificationCard(
                          i,
                          myData[i], ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return const CircularProgressIndicator();
        }
    );
  }
}
