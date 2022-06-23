import 'package:flutter/material.dart';
import 'package:uas/screen/home_screen.dart';

class Settings_screen extends StatefulWidget {
  const Settings_screen({Key key}) : super(key: key);
  _Settings_screenState createState() => _Settings_screenState();
}

class _Settings_screenState extends State<Settings_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[700],
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("Ini Adalah Halaman Settings"),
      ),
    );
  }
}
