import 'dart:html';

import 'package:flutter/material.dart';
import 'package:uas/screen/home_screen.dart';

class ListCar extends StatefulWidget {
  const ListCar({Key key}) : super(key: key);
  _ListCarState createState() => _ListCarState();
}

class _ListCarState extends State<ListCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
          },
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[700],
        title: Text(
          "List Car",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("Ini Adalah Halaman List Car"),
      ),
    );
  }
}
