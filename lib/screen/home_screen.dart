import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: Text(
          "Home Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.teal[600],
              alignment: Alignment.bottomLeft,
              child: Text(
                "Menu Pilihan",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Setings",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text(
                "Riwayat Pesanan",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
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
        SizedBox(height: 20),
        SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              var box = Hive.box('userBox').clear();

              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LoginScreen()),
              );
            },
            child: Text('Logout'),
          ),
        ),
      ]),
    );
  }
}
