import 'package:flutter/material.dart';
import 'package:uas/screen/conponent/body.dart';
import 'package:uas/login/login_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uas/screen/recently_screen.dart';
import 'package:uas/screen/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.teal[700],
        centerTitle: true,
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
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: new Text("P"),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
              },
              title: new Text("Home"),
              leading: new Icon(Icons.home),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Recently_screen(),
                ));
              },
              title: new Text("Riwayat Pesanan"),
              leading: new Icon(Icons.access_time),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => settings_screen(),
                ));
              },
              title: new Text("Settings"),
              leading: new Icon(Icons.settings),
            ),
            new Divider(),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
              },
              title: new Text("Logout"),
              leading: new Icon(Icons.logout_outlined),
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }

  settings_screen() {}
}
