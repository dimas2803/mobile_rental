import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Home Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(),
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
