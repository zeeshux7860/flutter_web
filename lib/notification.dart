import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:flutter_web/widgets.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);

  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
       appBar: new AppBar(
         backgroundColor: Colors.pink,
         centerTitle: true,
        title: new Text("Notification"),
       ),
       body: new ListView.builder(
         itemCount: 100,
         itemBuilder: (context,index){
           return new Column(
             children: <Widget>[
               ListTile(
             leading: new CircleAvatar(
               backgroundImage: new NetworkImage("https://getify.in/wp-content/uploads/2019/04/Md-Zeeshan.png"),
             ),
             title: new Text("Md Zeeshan",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
             subtitle: new Text("Flutter is Awesome Programing Language"),
             trailing: new Text("10Min Ago"),
           ),
           new Divider(
             height: 1.0,
           )
             ],
           );
         },
       )
    );
  }
}