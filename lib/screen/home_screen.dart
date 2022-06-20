import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/widget/settings.dart';
import 'login_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uas/widget/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.teal[600],
        title: Text(
          "Abadi Trans",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Galih Fuad Husen"),
              accountEmail: new Text("galih@gmail.com"),
            ),
            ListTile(
              trailing: new Icon(Icons.home),
              title: new Text("page 1"),
            ),
            ListTile(
              title: new Text("page 2"),
              trailing: new Icon(Icons.settings),
            ),
            ListTile(
              title: new Text("page 3"),
              trailing: new Icon(Icons.access_time),
            ),
            new Divider(),
            ListTile(
              title: new Text("page 3"),
              trailing: new Icon(Icons.logout_outlined),
            ),
          ],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text('SELAMAT DATANG DI', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Center(
          child: Text('RENTAL MOBILKU', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
      ]),
    );
  }
}
