import 'package:flutter_web/material.dart';

class Account extends StatefulWidget {
  Account({Key key}) : super(key: key);

  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
         backgroundColor: Colors.pink,
         centerTitle: true,
        title: new Text("Account"),
       ),
    );
  }
}