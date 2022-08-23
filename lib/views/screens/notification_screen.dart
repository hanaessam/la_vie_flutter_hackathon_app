import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:la_vie_app/constants.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Ionicons.arrow_back, color: Colors.black,),
        title: Text('Notifications', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials.png'),
              title: Text('Joy Arnold left 6 comments on Your Post', style: kNotificationStyle,),
              subtitle: Text(
                  'Yesterday at 11:42 PM'
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials-1.png'),
              title: Text('Dennis Nedry commented on Isla Nublar SOC2 compliance report', style: kNotificationStyle,),
              subtitle: Text(
                  '\n“ leaves are an integral part of the stem system. They are attached by a continuous vascular system to the rest of the plant so that free exchange of nutrients.”\n'
                  +'\n' +'Yesterday at 5:42 PM'
              ),

              isThreeLine: true,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials-2.png'),
              title: Text('John Hammond created Isla Nublar SOC2 compliance report', style: kNotificationStyle,),
              subtitle: Text(
                  'Wednesday at 11:15 AM'
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials.png'),
              title: Text('Joy Arnold left 6 comments on Your Post', style: kNotificationStyle,),
              subtitle: Text(
                  'Yesterday at 11:42 PM'
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials-1.png'),
              title: Text('Dennis Nedry commented on Isla Nublar SOC2 compliance report', style: kNotificationStyle,),
              subtitle: Text(
                  '\n“ leaves are an integral part of the stem system. They are attached by a continuous vascular system to the rest of the plant so that free exchange of nutrients.”\n'
                      +'\n' +'Yesterday at 5:42 PM'
              ),

              isThreeLine: true,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials-2.png'),
              title: Text('John Hammond created Isla Nublar SOC2 compliance report', style: kNotificationStyle,),
              subtitle: Text(
                  'Wednesday at 11:15 AM'
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials.png'),
              title: Text('Joy Arnold left 6 comments on Your Post', style: kNotificationStyle,),
              subtitle: Text(
                  'Yesterday at 11:42 PM'
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials-1.png'),
              title: Text('Dennis Nedry commented on Isla Nublar SOC2 compliance report', style: kNotificationStyle,),
              subtitle: Text(
                  '\n“ leaves are an integral part of the stem system. They are attached by a continuous vascular system to the rest of the plant so that free exchange of nutrients.”\n'
                      +'\n' +'Yesterday at 5:42 PM'
              ),

              isThreeLine: true,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            ),
            child: ListTile(
              leading: Image.asset('images/Initials-2.png'),
              title: Text('John Hammond created Isla Nublar SOC2 compliance report', style: kNotificationStyle,),
              subtitle: Text(
                  'Wednesday at 11:15 AM'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
