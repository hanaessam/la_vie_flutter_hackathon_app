import 'dart:async';

import 'package:flutter/material.dart';

import '../../models/APIs/forums_api.dart';
import '../forum_card.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({Key? key}) : super(key: key);

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
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
    var response = await ForumsApi().getForums();
    _streamController.add(response);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
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
                          child: ForumCard(
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
      ),
    );
  }
}
